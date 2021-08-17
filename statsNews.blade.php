<x-Header />
<x-Preloader />
<x-Headernav />

<div class="container-fluid" style="margin-top:110px;">
    <div style="background-color:#ff8800;color:white;padding:5px;text-align:center;border-radius:25px;">
       <h2> Sports Stats </h2>
   
     
    </div>
    <br/>
    <div class="row">
       
  
        @foreach($data as $dat)
        <div class="col-md-3">
            <div class="card" style="width: 18rem;padding:16px;">
                <img src="/ArticleImages/{{$dat->Thumbnail}}" class="card-img-top" alt="{{$dat->Title}}">
                <div class="card-body">
                    <h5 class="card-title">{{$dat->Title}} </h5>
                    <p class="card-text"> <i> {{$dat->usertype}} - {{$dat->updated_at}} </i></p>
                    <p class="card-text"> {{$dat->Description}}</p>
                    <center> <a href="/stats/{{$dat->Pagename}}" class="btn btn-primary"> Read More</a> </center>
                </div>
            </div>
        </div>
        @endforeach
  
 
    </div>

</div>

<x-Footer />
<x-Footerfile />