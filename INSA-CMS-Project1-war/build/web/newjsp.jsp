<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div id="dropImage" ondrop="dropHandler(event);" ondragover="dragOverHandler(event);">
        <img alt="" src="https://www.linuxquestions.org/questions/images/HW3.jpg"/>
  <form name="dropForm" method="post" enctype="multipart/form-data" action="checking">
  <input type="file" name="myImage">
  <input type="submit" value="Image"/>
  </form>
      </div>
      <script>
          function dropHandler(event)
{
    event.preventDefault();     

    // Use DataTransferItemList interface to access the file(s)
    
    if (event.dataTransfer.items)
    {
        for (var i = 0; i < event.dataTransfer.items.length; i++)
        {
            // If dropped items aren't files, reject them
            if (event.dataTransfer.items[i].kind === 'file')
            {
// not sure what to do here
                var file = event.dataTransfer.items[i].getAsFile();
                // console.log('... file[' + i + '].name = ' + file.name);
document.dropForm.myImage.value = file.name;   // this doesn't work
document.dropForm.submit();

            }
        }
    }
     
    else {      // Use DataTransfer interface to access the file(s)
    
        for (var i = 0; i < event.dataTransfer.files.length; i++)
            console.log('... file[' + i + '].name = ' + event.dataTransfer.files[i].name);
    }
     
}    

function dragOverHandler(event)
{
    event.preventDefault();     // Prevent default behavior (Prevent file from being opened)
}
      </script>
</body>
</html>