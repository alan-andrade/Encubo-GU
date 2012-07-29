$ ->
  toggle_link = $('.user .toggle a')
  toggle_link.click event, ->
    event.preventDefault()
    target = $(event.target)
    $.ajax
      url: target.attr 'href'
      type: 'put'
      success: ->
        if target.text().match(/^Activar/i)
          target.text('Desactivar')
          target.removeClass('btn-success')
          target.addClass('btn-warning')
        else
          target.text('Activar')
          target.removeClass('btn-warning')
          target.addClass('btn-success')

        return

    return
  return
