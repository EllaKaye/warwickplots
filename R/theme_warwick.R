#' ggplot2 theme consistent with Warwick Brand
#'
#' `theme_warwick()` is an extension of `ggplot2::theme_minimal()`. See Details.
#'
#' `theme_warwick()` is an extension of `ggplot2::theme_minimal()`, offering the
#' following in addition:
#'
# '- Text hierarchy, with different sizes and colours
#' - Spacing, giving the text room to breathe
#' - Uses `ggtext::element_textbox_simple()` for the plot title and subtitle, to enable use of markdown and CSS styling, and text-wrapping if the title/subtitle is long
#' - Uses Lato or Avenir Next font (for online or print use respectively), *if* your system is set up for it
#'
#' Note that any `theme_warwick()` defaults can be overridden with a subsequent call to `theme()`.
#'
#' For further details, including how to ensure your system is set up to use custom fonts, see the [warwickplots](https://warwick-stats-resources.github.io/warwickplots/articles/warwickplots.html) vignette.
#' For more examples, see the [examples](https://warwick-stats-resources.github.io/warwickplots/articles/examples.html) vignette.
#'
#' @param base_size numeric, base size for font
#' @param use character, one of "online" or "print" (defaults to "online"), which determines which font is used
#'
#' @export
#'
#' @examples
#' \dontrun{
#' ggplot2::ggplot(mtcars, ggplot2::aes(mpg, wt)) +
#'    ggplot2::geom_point() +
#'    ggplot2::labs(title = "A demo plot") +
#'    theme_warwick()
#' }

theme_warwick <- function(base_size = 11, use = c("online", "print")) {

  dark_text <- "#303030"
  mid_text <-  "#595959"
  light_text <- "#AFAFAF"
  pale_text <- "#EBEBEB"

  # choose appropiate font for usage
  use = match.arg(use)
  font <- ifelse(use == "online", "Lato", "Avenir Next")

  ggplot2::theme_minimal(base_size = base_size) +
    ggplot2::theme(text = ggplot2::element_text(colour = dark_text,
                                                lineheight = 1.1,
                                                family = font

    ),
    plot.title = ggtext::element_textbox_simple(colour = dark_text,
                                                size = ggplot2::rel(1.4),
                                                margin = ggplot2::margin(12, 0, 6, 0)),
    plot.title.position = "plot",
    plot.subtitle = ggtext::element_textbox_simple(size = ggplot2::rel(1.1), margin = ggplot2::margin(4, 0, 6, 0)),
    axis.text.y = ggplot2::element_text(colour = mid_text),
    axis.title.y = ggplot2::element_text(size = base_size, margin = ggplot2::margin(r = 10)),
    axis.text.x = ggplot2::element_text(colour = mid_text),
    axis.title.x = ggplot2::element_text(size = base_size, margin = ggplot2::margin(t = 10)),
    legend.position = "top",
    legend.justification = 1,
    panel.grid = ggplot2::element_line(colour = pale_text),
    plot.caption = ggplot2::element_text(color = mid_text, size = ggplot2::rel(0.8), margin = ggplot2::margin(t = 12)),
    plot.caption.position = "plot",
    plot.margin = ggplot2::margin(0.25, 0.25, 0.25, 0.25,"cm"))
}
