<x-Header />
<x-Preloader />
<x-Headernav2 />
<div class="container" style="margin-top:70px;padding:16px;">

    <div class="container">
  
        <form method="post" action="/edit-article" enctype="multipart/form-data">
            {{csrf_field()}}
            <?php 
//LongDescription
 $r=Storage::disk('local')->get("/longDescArticle/".$page->Content);
 
?>
            <div class="row" style="padding:50px;">
                <h2> Section - Add Post/Article/News</h2>
                @if (session('message'))
                <div class="alert alert-success">
                    {{ session('message') }}
                </div>
                @endif
                <table class="table">
                <tr>
                        <td>
                       <p style="padding:16px;background-color:black;color:white;">  {{$Cat_type["$page->Posttype"]}} </p>
                       <input type="checkbox"  name="change_page_cat"  value="yes" class="checkbox"/> Need to change, tick and select from below !
                       <br/>                      <br/>  
                       <x-Admin.Listpagestypes />
                            <span style="color:red;">
                                @error('pagetypestoCreate')
                                {{$message}}
                                @enderror
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p> Title </p>
                            <input type="text" name="title" class="form-control" value="{{$page->Title}}"/>
                            <span style="color:red;">
                                @error('title')
                                {{$message}}
                                @enderror
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                          <p> Visible</p>
                          <input type="hidden" name="id" value="{{$page->id}}"/>
                          @if($page->visible="1")
                          <input type="checkbox" name="visibleofpost" value="yes" class="checkbox"  />
                          @else
                          <input type="checkbox" name="visibleofpost" value="yes" class="checkbox" checked/>
                         
                          @endif
                           disable this page.
                         
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="/ArticleImages/{{$page->Thumbnail}}" style="height:200px;max-width:100%:;max-height:100%;"/>
                            <input type="checkbox" name="ChangeImage" value="yes" class="checkbox" style="  width: 30px;height: 30px;"/> Click here if (Tick) if you want toi change image. this will delete older image and replace with new. 
                            <p> Image </p>
                           
                            <input type="file" name="thumbnailimage" class="form-control" />
                            <span style="color:red;">
                                @error('thumbnailimage')
                                {{$message}}
                                @enderror
                            </span>
                        </td>
                    </tr>



                    <tr>
                        <td>
                            <p> Short-Description (for website and search engine description ) </p>
                            <textarea name="shortdescription" class="form-control" style="height:100px;">{{$page->Description}}</textarea>
                            <span style="color:red;">
                                @error('shortdescription')
                                {{$message}}
                                @enderror
                            </span>
                        </td>
                    </tr>


                    <tr>
                        <td>
                            <p> Long-Description </p>
                            <textarea id="mytextareabox" name="mytextarea" class="form-control"
                                style="height:500px;">{{$r}}</textarea>
                            <span style="color:red;">
                                @error('mytextarea')
                                {{$message}}
                                @enderror
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="submit" class="btn btn-success btn-block" value="POST" />
                        </td>
                    </tr>

                </table>

            </div>
        </form>
    </div>




</div>

<x-Footer />
<x-Footerfile />