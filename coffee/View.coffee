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
              <tr>
                  <td>名稱</td>
                  <td>時間</td>
                  <td>學分數</td>
                  <td class="favorite">最愛</td>
              </tr>
            </table>
          </div>
        </div>
        """
    addRow : (name,time,credit)->
      $table.append """
        <tr>
          <td>#{name}</td>
          <td>#{time}</td>
          <td>#{credit}</td>
          <td class="favorite"><span class="glyphicon glyphicon-star"></span></td>
        </tr>
        """

    # user
    showFavoriteBtn : ()->
      $('.favorite').addClass('visible')

  window.View = new View()
