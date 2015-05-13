$ ->
  class View
    THIS = undefined
    $main = $("#main")
    $table = undefined
    isInit = false
    constructor : () ->
      THIS = @
      @.init()
      $table = $("#table")
    init : ()->
      $main.html """
        <div class="container">
          <div class="row">
            <table id="table" class="table table-striped">
              <tr >
                  <td>名稱</td>
                  <td>時間</td>
                  <td>學分數</td>
                  <td class="favorite">最愛</td>
              </tr>
            </table>
          </div>
        </div>
        """
    # step 6-4 將 id 資料放入 tr 這的"資料的容器"上
    # step 6-4 將 實心的星星改成空心的
    addRow : (name,time,credit,courseId )->
      $table.append """
        <tr data-courseid="#{if courseId? then courseId else ""}">
          <td>#{name}</td>
          <td>#{time}</td>
          <td>#{credit}</td>
          <td class="favorite"><span class="glyphicon glyphicon-star-empty"></span></td>
        </tr>
        """

    toggleFavorite : ( $favoriteBtn , active )->
      if active
        $favoriteBtn
          .removeClass('glyphicon-star-empty')
          .addClass('glyphicon-star');
      else
        $favoriteBtn
          .removeClass('glyphicon-star')
          .addClass('glyphicon-star-empty');


    # step 6-4 在做資料關聯相關時需要的方程式

    # user
    showFavoriteBtn : ()->
      $('.favorite').addClass('visible')

  window.View = new View()
