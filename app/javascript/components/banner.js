import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Create a new list to save your movies", "Add a new bookmark to a list"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
