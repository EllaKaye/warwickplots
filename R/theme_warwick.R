#' ggplot2 theme consistent with Warwick Brand
#'
#' @param base_size numeric, base size for font
#' @param use character, one of "online" or "print" (defaults to "online"), which determines which font is used
#'
#' @export
#'
#' @examples
#' \dontrun{
#' ggplot2::ggplot(ggplot2::mpg, ggplot2::aes(cty, hwy)) +
#'    ggplot2::geom_point() +
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
    axis.text.x = ggplot2::element_text(colour = mid_text, size = base_size),
    axis.title.x = ggplot2::element_text(size = base_size, margin = ggplot2::margin(t = 10)),
    legend.position = "top",
    legend.justification = 1,
    panel.grid = ggplot2::element_line(colour = pale_text),
    plot.caption = ggplot2::element_text(color = mid_text, size = ggplot2::rel(0.8), margin = ggplot2::margin(t = 12)),
    plot.caption.position = "plot",
    plot.margin = ggplot2::margin(0.25, 0.25, 0.25, 0.25,"cm"))
}
