import SwiftySites
import Foundation

let siteMap = TaggedBlog(
    SiteConfig(
        title: "SwiftySites",
        description: "Documentation and news about the SwiftySites framework for generating static sites.",
        language: "en-us",
        editor: "swiftysites@diegolavalle.com",
        webmaster: "dev@diegolavalle.com",
        copyright: "Copyright © ∞ SwiftySites",
        productionUrl: URL(string: "https://swiftysites.diegolavalle.com")!,
        developmentUrl: URL(string: "http://localhost.localdomain")!
    ),
    contentA: [homePage, gfMarkdownPage, postsIndexPage, tagsPage],
    contentB: [helloWorldPost, supportingMarkdownPost, syntaxHightlightingPost, doccPost, themeSwitchPost, doccNetlifyPost],
    templates: [pageTemplate, homeTemplate, homeXMLTemplate, postsSectionTemplate, tagsSectionTemplate, postTemplate, tagTemplate],
    generators: [tagGenerator]
).render()

// print(siteMap.urls)
