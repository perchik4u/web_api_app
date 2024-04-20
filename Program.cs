using Microsoft.AspNetCore.Authentication;

var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();


app.Run(async (context) => 
{
    var response = context.Response;
    response.Headers.ContentLanguage = "ru-RU";
    response.ContentType = "text/html; charset=utf-8";
    response.Headers.Append("secret-id", "1337");
    await context.Response.WriteAsync("<h2>Hello METANIT.COM</h2><h3>Welcome to ASP.NET Core</h3>");
});

app.Run();