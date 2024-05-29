#' University of Warwick brand palettes
#'
#' Palettes consistent with The University of Warwick's brand.
#'
#' For more information on the University of Warwick's brand colours, see <https://warwick.ac.uk/about/brand/brand-guidelines/colours/>.
#'
#' The primary palette is a combination of the primary brand colour (aubergine) and the five bright accent colours.
#' These are the colours that the brand team uses for the graphs in their PowerPoint template.
#'
#' The three sequential palettes run between the bright colour and its 30% tint.
#'
#' Since the primary Warwick brand aubergine is much darker than the bright accent colours, it was too strong as a starting point for the aubergine side of the divergent palettes. To achieve a better balance, `aubergine_ruby` starts with an 80% tint of the primary aubergine, and `aubergine_teal` starts with a 70% tint.
#'
#' @format ## `warwick_palettes`
#' An object of class `palettes_palette` with `r length(warwick_palettes)`
#' colour palettes.
#' @source <https://github.com/Warwick-Stats-Resources/warwickplots>
#' @author [Ella Kaye](https://github.com/EllaKaye)
#' @seealso [pal_palette()], [pal_colour()]
#' @examples
#' # Get all palettes by name
#' names(warwick_palettes)
#'
#' # Plot a specific palette
#' plot(warwick_palettes$primary)
#'
#' # Subset a palette
#' warwick_palettes$primary[c(1, 3, 5)]
#'
#' #' # Plot all palettes
#' \dontrun{
#' plot(warwick_palettes)
#' }
"warwick_palettes"

#' @rdname warwick_palettes
#' @format ## `warwick_palettes_discrete`
#' An object of class `palettes_palette` with
#' `r length(warwick_palettes_discrete)` discrete colour palettes.
"warwick_palettes_discrete"

#' @rdname warwick_palettes
#' @format ## `warwick_palettes_sequential`
#' An object of class `palettes_palette` with
#' `r length(warwick_palettes_sequential)` sequential colour palettes.
"warwick_palettes_sequential"

#' @rdname warwick_palettes
#' @format ## `warwick_palettes_divergent`
#' An object of class `palettes_palette` with
#' `r length(warwick_palettes_divergent)` sequential colour palettes.
"warwick_palettes_divergent"
