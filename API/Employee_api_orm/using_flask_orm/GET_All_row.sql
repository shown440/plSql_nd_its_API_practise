DECLARE
   l_param_list      VARCHAR2 (512);
   l_http_request    UTL_HTTP.req;
   l_http_response   UTL_HTTP.resp;
   l_response_text   VARCHAR2 (32767);
   v_url             VARCHAR (500);

   BEGIN
     v_url := 'http://10.11.200.39:5000/employees/';     
    
     l_param_list := NULL;
     l_http_request := UTL_HTTP.begin_request (v_url, 'GET', 'HTTP/1.1');
     
     UTL_HTTP.write_text (l_http_request, l_param_list);
     l_http_response := UTL_HTTP.get_response (l_http_request);
     UTL_HTTP.read_text (l_http_response, l_response_text); 
   
  dbms_output.put_line(l_response_text);  
  
  UTL_HTTP.end_response (l_http_response);
  
EXCEPTION
   WHEN UTL_HTTP.end_of_body
   THEN
   UTL_HTTP.end_response (l_http_response); 
END;