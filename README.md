# Articles with Images

This repository contains a subset of our Ruby on Rails app. There are 3 models.
`Articles` are a type of `Posting`. Other types of Postings include `Questions` and `ProductReviews`. 
Postings have a `body` attribute, which is the body of the Article, Question or Review. 
The text of the Posting is stored as raw html. Some Postings have images embedded within the text of the body, in the form of an `<img>` tag wrapped in `<figure>` tags.

Throughout the site, Posting "snippets" are displayed. A snippet is the first few lines of the Posting. 
They include links to read the full Posting, whether it's an Article, Question or Product Review.  

The repo also contains one view file for displaying a "snippet" and a single spec file.

## The Task
The product manager has decided that 
when displaying a Article "snippet" and the article contains images, the first image should be displayed above the snippet body. 
If an Article contains multiple images, only the first image should be displayed.

## Your Task
You are the developer assigned to review the code that was created for this feature. There are many ways this code could be improved.
As you review the code, try to answer the following questions:

- Does the code work?
- What are the shortcomings of this implementation?
- Does the code adhere to best practices?
- How might you implement this differently?
I would use Nokogiri to parse the html

#### RSpec
The code includes a unit test, which passes. What is wrong with this unit test? How could it be improved?

### Instructions
Fork this repository. You can either add comments to the existing code explaining what is wrong and/or what you would change and why. 
Or you can rewrite the feature, highlighting in the comments what was problematic with the original implementation and providing justification for your decisions. 
Please put a link to your public repository into the answer section of the question.
