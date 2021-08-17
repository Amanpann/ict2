<x-Header />
<x-Preloader />
<x-Headernav2 />
<style>
img:hover {
    border: 4px solid #00aeff;
    padding: 10px;

}
</style>
<div class="container-fluid" style="margin-top:130px;">
    <div class="row" style="text-align:center;">
        <div class="col-md-3 col-sm-6 col-xs-12">
            <A href="clubpplicy/{{$clubid}}"> <img src="Images/insurance.png" style="max-width:100%;height:100px;" ; />
            <h2> Club Policies </h2> </a>
        </div>
        <div class="col-md-3 col-sm-6  col-xs-12">
        <A href="clubnotice/{{$clubid}}">    <img src="Images/noticeboard.png" style="max-width:100%;height:100px;" ; />
            <h2> Club Notices </h2> </a>
        </div>
        <div class="col-md-3 col-sm-6  col-xs-12">
        <A href="clubnews/{{$clubid}}">  <img src="Images/news.png" style="max-width:100%;height:100px;" ; />
            <h2> Club News </h2> </a>
        </div>
        <div class="col-md-3 col-sm-6  col-xs-12">
        <A href="clubarticles/{{$clubid}}">    <img src="Images/blog.png" style="max-width:100%;height:100px;" ; />
            <h2> Blogs/Updates </h2> </a>
        </div>
    </div>
</div>

<!-- Teams  -->
<div class="container-fluid" style="background-color:#e6f7ff;color:white;border-radius:20px;">
    <div class="row">
        <div class="col-md-12 ">
            <hr />
             
                <h1 style="background-color:#009be3;color:white;padding:10px;border-radius:20px;text-align:center;"> Team</h1>
            <br/>  <br/> 
            <x-Admin.Teamlistable />
        </div>
    </div>

</div>

<!-- Coaches  -->

<div class="container-fluid" style="background-color:#e6f7ff;color:white;border-radius:20px;">
    <div class="row">
        <div class="col-md-12 ">
            <hr />
            <center>
                <h1 style="background-color:#009be3;color:white;padding:10px;border-radius:20px;text-align:center;"> Coaches </h1>
            </center>
            <br/>  <br/> 
            <x-Admin.Listcoaches />
        </div>
    </div>

</div>


 

<x-Footer />
<x-Footerfile />