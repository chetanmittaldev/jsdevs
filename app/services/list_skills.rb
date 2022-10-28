class ListSkills
  def call(developer)
    res = []
    skills_as_str = developer.zskills
    if skills_as_str.present?
      abilities = list
      res = skills_as_str.split(",").map do |value_skill|
        element = abilities.find { |elt| elt[:value] == value_skill }
        element ? element[:name] : value_skill
      end
    end
    res
  end

  def list
    [
      {class: "frontend", value: "vuejs", name: "VueJS"},
      {class: "frontend", value: "reactjs", name: "ReactJS"},
      {class: "frontend", value: "angularjs", name: "AngularJS"},
      {class: "frontend", value: "emberjs", name: "EmberJS"},
      {class: "frontend", value: "tailwind", name: "TailwindCSS"},
      {class: "frontend", value: "bootstrap", name: "BootstrapCSS"},
      {class: "frontend", value: "chakra", name: "ChakraUI"},
      {class: "backend", value: "scss", name: "SASS/SCSS"},
      {class: "backend", value: "express", name: "ExpressJS"},
      {class: "backend", value: "nextjs", name: "NextJS"},
      {class: "backend", value: "nuxt", name: "Nuxt"},
      {class: "backend", value: "nodejs", name: "NodeJS"},
      {class: "backend", value: "dotnet", name: ".Net"},
      {class: "backend", value: "spring", name: "Spring"},
      {class: "backend", value: "rails", name: "Rails"},
      {class: "backend", value: "php", name: "PHP"},
      {class: "languages", value: "javascript", name: "JavaScript"},
      {class: "languages", value: "typescript", name: "TypeScript"},
      {class: "languages", value: "python", name: "Python"},
      {class: "languages", value: "ruby", name: "Ruby"},
      {class: "languages", value: "csharp", name: "C#"},
      {class: "languages", value: "java", name: "Java"},
      {class: "languages", value: "dart", name: "Dart"},
      {class: "languages", value: "golang", name: "Golang"}
    ]
  end
end
