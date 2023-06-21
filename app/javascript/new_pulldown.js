function pullDown() {
  const pullDownButton = document.getElementById("new-lists");
  const pullDownParents = document.getElementById("new-pull-down");
  const pullDownChild = document.querySelectorAll(".new-pull-down-list");

  pullDownButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "color:#1BA69E;");
    pullDownParents.style.display = "block";
  });

  pullDownButton.addEventListener('mouseout', function(){
    this.removeAttribute("style");
    pullDownParents.style.display = "none";
  });

  pullDownChild.forEach(function(element) {
    element.addEventListener('mouseover', function() {
      this.style.color = "#1BA69E"; // カーソルを置いた時の色を設定
    });

    element.addEventListener('mouseout', function() {
      this.style.color = "#FF0000"; // デフォルトの色に戻す場合は空文字列にする
    });
  });
}

window.addEventListener('load', pullDown);