--@Autor(es):       Jaime Manuel Miranda Serrano y Diego Adrian Del Razo Sanchez
--@Fecha creación:  03/06/2024
--@Descripción:     Procedimiento para almacenar pdf en la tabla vivienda_venta

create or replace procedure insertar_avaluo_vivienda(
  p_vivienda_id in number, p_nombre_archivo in varchar2 
)
is 
v_bfile bfile;
v_blob blob;
v_count number;
begin
 --Verificando existencia del servicio
  select count(*) into v_count
  from vivienda_venta
  where vivienda_id = p_vivienda_id;
  if v_count = 0 then 
     raise_application_error(-20001, 'ERROR: vivienda no encontrada');
  --verificando que la extension sea .pdf
  elsif lower(substr(p_nombre_archivo, -4)) != '.pdf' then
    raise_application_error(-20002, 'ERROR: No es extension .pdf');
  else
    --Inicializando el bfile, que ubica de manera fisica el archivo
    v_bfile := bfilename('AVALUO_PDF',p_nombre_archivo);

    --Validando que el archivo exista en el directorio AVALUO_PDF
    if dbms_lob.fileexists(v_bfile) != 1 then
      raise_application_error(-20003, 'El archivo no existe en el directorio avaluo_pdf');
    --Validando que el archivo este cerrado
    elsif dbms_lob.isopen(v_bfile) = 1 then
      raise_application_error(-20004, 'El archivo esta abierto');
    else
      --Obteniendo el empty_blob y guardandolo en v_blob con un bloqueo
      select avaluo_propiedad_pdf into v_blob
      from vivienda_venta
      where vivienda_id = p_vivienda_id
      for update;
      --leyendo el archivo
      dbms_lob.open(v_bfile,dbms_lob.lob_readonly);
      --cargando el archivo en la base
      dbms_lob.loadfromfile(v_blob,v_bfile,dbms_lob.getlength(v_bfile));
      --cerrando el archivo
      dbms_lob.close(v_bfile);  
      commit; 
    end if;
  end if;

end;
/
show errors;