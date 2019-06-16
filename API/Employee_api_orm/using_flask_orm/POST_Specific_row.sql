-- For more info visit
-- https://stackoverflow.com/questions/24838138/how-to-sent-a-post-request-as-json-in-plsql

declare
req utl_http.req;
res utl_http.resp;

buffer varchar2(4000); 
content varchar2(4000) := '{"name": "SHIFULLAH","designation": "VP","manager_id": "7839","date_of_birth": "16-03-1988","salary": "5000","commission": "2000","department_no": "10"}';

p_name            VARCHAR2 (500) := 'SHIFULLAH';
p_date            VARCHAR2 (500) := '16-03-1988';

url varchar2(4000) := 'http://10.11.200.39:5000/employee/name='||p_name||'&'||'date='||p_date;

begin

req := utl_http.begin_request(url, 'POST',' HTTP/1.1');
utl_http.set_header(req, 'user-agent', 'mozilla/4.0'); 
utl_http.set_header(req, 'content-type', 'application/json'); 
utl_http.set_header(req, 'Content-Length', length(content));

utl_http.write_text(req, content);

res := utl_http.get_response(req);

    begin
    loop
    utl_http.read_line(res, buffer);
    dbms_output.put_line(buffer);

    end loop;
    utl_http.end_response(res);
    exception
    when utl_http.end_of_body then
    utl_http.end_response(res);
    end;
end;