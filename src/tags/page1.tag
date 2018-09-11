<page1>
  <h1>{name}</h1>
<form>


  <div class="form-group">
    <label for="txtBookCD">本コード</label>
    <input type="text" class="form-control" ref="BookCD" id="txtBookCD" placeholder="本のコード">
  </div>
  <div class="form-group">
    <label for="txtBookName">本のなまえ</label>
    <input type="text" class="form-control" ref="BookName" id="txtBookName" placeholder="本のなまえ">
  </div>

  <button type="submit" class="btn btn-default" ref="Register" onclick={Register}>登録</button>
  
  <ul>
   <li each={ books }>{ name }</li>
    <!--  <li each={books}>{Name}</li>  -->
  </ul>
</form>

  <script>
    //this.name = opts.name;
    this.books = [{name:"aaa"},{name:"bbb"}];

    Register(){
  //    var book = {name:"aaa"};
  //    book.cd = this.refs.BookCD;
  //    book.name = this.refs.BookName;
      this.books.push({name:this.refs.BookName.value});
      return false;
    }
  </script>
</page1>