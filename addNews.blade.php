<x-Header />
<x-Preloader />
<x-Headernav2 />
 <div class="container" style="margin-top:70px;padding:16px;">
 
 <div class="container">

<form method="post" action="ArticleAdd" enctype="multipart/form-data">
    {{csrf_field()}}
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
                    <input type="text" name="title" class="form-control" />
                    <input type="hidden" name="id" value="" class="form-control" />
                    <span style="color:red;">
                        @error('title')
                        {{$message}}
                        @enderror
                    </span>
                </td>
            </tr>

            <tr>
                <td>
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
                    <textarea name="shortdescription" class="form-control" style="height:100px;"></textarea>
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
                        style="height:500px;"></textarea>
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