#' University of Warwick brand palettes
#'
#' Palettes consistent with The University of Warwick's brand.
#'
#' @format ## `warwick_palettes`
#' An object of class `palettes_palette` with `r length(warwick_palettes)`
#' colour palettes. Use `names(warwick_palettes)` to return all palette names.
#' @source <https://github.com/Warwick-Stats-Resources/warwickplots>
#' @author [Ella Kaye](https://github.com/EllaKaye)
#' @seealso [pal_palette()], [pal_colour()]
#' @examples
#' # Get all palettes by name.
#' names(warwick_palettes)
#'
#' # Plot a specific palette
#' plot(warwick_palettes$primary)
#'
#' #' # Plot all palettes.
#' \dontrun{
#' plot(warwick_palettes)
#' }
"warwick_palettes"

#' @rdname warwick_palettes
#' @format ## `warwick_palettes_discrete`
#' An object of class `palettes_palette` with
#' `r length(warwick_palettes_discrete)` discrete colour palettes.
#'  Use `names(warwick_palettes_discrete)` to return all palette names.
"warwick_palettes_discrete"

#' @rdname warwick_palettes
#' @format ## `warwick_palettes_sequential`
#' An object of class `palettes_palette` with
#' `r length(warwick_palettes_sequential)` sequential colour palettes.
#'  Use `names(warwick_palettes_sequential)` to return all palette names.
"warwick_palettes_sequential"

#' @rdname warwick_palettes
#' @format ## `warwick_palettes_divergent`
#' An object of class `palettes_palette` with
#' `r length(warwick_palettes_divergent)` sequential colour palettes.
#'  Use `names(warwick_palettes_divergent)` to return all palette names.
"warwick_palettes_divergent"
