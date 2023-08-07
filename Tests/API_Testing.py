import      requests
res=requests.request("GET","http://216.10.245.166/Library/GetBook.php?ID=rvm152414",data="",headers="")
print(res.status_code)
print(res.content)
print(res.json())
print(res.json()[0])
print(res.json()[0]["book_name"])