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
      {class: "frontend", value: "polymer", name: "Polymer"},
      {class: "frontend", value: "npm", name: "NPM"},
      {class: "frontend", value: "flutter", name: "Flutter"},
      {class: "frontend", value: "reactnative", name: "React Native"},
      {class: "frontend", value: "svelte", name: "Svelte"},
      {class: "frontend", value: "alpine", name: "Alpine"},
      {class: "frontend", value: "preact", name: "Preact"},
      {class: "frontend", value: "redux", name: "Redux"},
      {class: "backend", value: "scss", name: "SASS/SCSS"},
      {class: "backend", value: "express", name: "ExpressJS"},
      {class: "backend", value: "nextjs", name: "NextJS"},
      {class: "backend", value: "nuxt", name: "Nuxt"},
      {class: "backend", value: "nodejs", name: "NodeJS"},
      {class: "backend", value: "dotnet", name: ".Net"},
      {class: "backend", value: "spring", name: "Spring"},
      {class: "backend", value: "rails", name: "Rails"},
      {class: "backend", value: "php", name: "PHP"},
      {class: "backend", value: "symphony", name: "Symphony"},
      {class: "backend", value: "laravel", name: "Laravel"},
      {class: "backend", value: "django", name: "Django"},
      {class: "languages", value: "javascript", name: "JavaScript"},
      {class: "languages", value: "es6p", name: "ES6+"},
      {class: "languages", value: "typescript", name: "TypeScript"},
      {class: "languages", value: "python", name: "Python"},
      {class: "languages", value: "ruby", name: "Ruby"},
      {class: "languages", value: "csharp", name: "C#"},
      {class: "languages", value: "java", name: "Java"},
      {class: "languages", value: "dart", name: "Dart"},
      {class: "languages", value: "golang", name: "Golang"},
      {class: "methodology", value: "agility", name: "Agility"},
      {class: "methodology", value: "scrum", name: "Scrum"},
      {class: "methodology", value: "kanban", name: "Kanban"},
      {class: "methodology", value: "lean", name: "Lean"},
      {class: "methodology", value: "xp", name: "Extreme Programming"},
      {class: "methodology", value: "pp", name: "Pair Programming"},
      {class: "methodology", value: "crystal", name: "Crystal"},
      {class: "protocol", value: "graphql", name: "GraphQL"},
      {class: "protocol", value: "rest", name: "REST"},
      {class: "database", value: "pg", name: "Postgresql"},
      {class: "database", value: "mongodb", name: "MongoDB"},
      {class: "database", value: "mysql", name: "MySQL"},
      {class: "database", value: "firebase", name: "Firebase"},
      {class: "database", value: "redis", name: "Redis"},
      {class: "devops", value: "aws", name: "Aws"},
      {class: "devops", value: "azure", name: "Azure"},
      {class: "devops", value: "websockets", name: "Web Sockets"},
      {class: "devops", value: "googlecloud", name: "Google Cloud"},
      {class: "devops", value: "docker", name: "Docker"},
      {class: "devops", value: "gitlab", name: "GitLab"},
      {class: "devops", value: "github", name: "GitHub"},
      {class: "devops", value: "bitbucket", name: "Bitbucket"},
      {class: "devops", value: "chef", name: "Chef"},
      {class: "devops", value: "puppet", name: "Puppet"},
      {class: "devops", value: "ansible", name: "Ansible"},
      {class: "devops", value: "kubernetes", name: "Kubernetes"},
      {class: "devops", value: "cloudfoundry", name: "Cloud Foundry"},
      {class: "devops", value: "cloudflare", name: "CloudFlare"},
      {class: "devops", value: "heroku", name: "Heroku"},
      {class: "devops", value: "nginx", name: "Nginx"},
      {class: "devops", value: "digitalocean", name: "Digital Ocean"},
      {class: "quality", value: "jest", name: "Jest"},
      {class: "quality", value: "puppeteer", name: "Puppeteer"},
      {class: "quality", value: "eslint", name: "ESlint"},
      {class: "quality", value: "tslint", name: "TSlint"},
      {class: "quality", value: "cicd", name: "CI/CD"},
      {class: "quality", value: "maven", name: "Maven"},
      {class: "quality", value: "unittesting", name: "Unit Testing"},
      {class: "quality", value: "loadtesting", name: "Load Testing"},
      {class: "quality", value: "integrationtesting", name: "Integration Testing"},
      {class: "quality", value: "cypressjs", name: "CypressJS"},
      {class: "quality", value: "selenium", name: "Selenium"},
      {class: "quality", value: "playwright", name: "Playwright"},
      {class: "quality", value: "sonarqube", name: "SonarQube"},
      {class: "quality", value: "sonarqube", name: "SonarQube"}
    ]
  end
end
