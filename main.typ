#import "@preview/icu-datetime:0.2.0" as icu
#let title = "چشم پزشکی"

#let authors = (
  (name: "ایمان مختاری اسکی", affiliation: "دانشگاه آزاد اسلامی (واحد خوراسگان)", email: "imaaski@gmail.com"),
  (name: "ولی‌الله درخشانی", affiliation: "دانشگاه آزاد اسلامی (واحد خوراسگان)", email: "imaaski@gmail.com"),
  (name: "آرمیتا حاج حیدری", affiliation: "دانشگاه آزاد اسلامی (واحد خوراسگان)", email: "imaaski@gmail.com"),
  (name: "شمیم کیانی", affiliation: "دانشگاه آزاد اسلامی (واحد خوراسگان)", email: "imaaski@gmail.com"),
  (name: "نمیا ملک پور", affiliation: "دانشگاه آزاد اسلامی (واحد خوراسگان)", email: "imaaski@gmail.com"),
)
#set document(
  title: title,
  author: authors.map(a => a.name)
)
#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  numbering: "1",
  number-align: center,
)
// Date
#let dt = datetime(
  year: 2025,
  month: 11,
  day: 4,
)

// Jalali date
#let jDate = icu.fmt(
  dt,
  locale: "fa-IR-u-ca-persian", 
)

// University Logo
#let university-logo = image("assets/khuisf_logo.png", height: 10cm)

// Paragragh style
#set par(
  justify: true,
  leading: 0.8em,
  first-line-indent: 0.5cm
)
#set text(font: "B Nazanin", lang: "fa")

// Centered header
#align(center)[
  #university-logo
  // Title
  #block(text(weight: "bold", size: 16pt, title)) // Larger, bolder title
  #v(1.5em)

  // Authors' Names
  #authors.map(a => {
    // Note: The use of \u200e is the LTR mark to ensure the email is displayed correctly in the footnote.
    text(size: 11pt, a.name) + footnote( a.email )
  }).join("، ") // Use the Persian comma separator

  #v(0.8em)

  // Affiliations (Grouped by unique affiliation)
  #authors.map(a => a.affiliation).dedup().map(aff => {
    text(size: 10pt, aff)
  }).join("; ")

  #v(1em)

  // Date
  #text(size: 10pt, "تاریخ: " + jDate)
]

#pagebreak()

== چکیده
