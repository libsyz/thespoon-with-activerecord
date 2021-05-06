

const initScrollToSearch =  () => {
  // Select the input form
  const form = document.querySelector('.form-control');
  // Select all the cards
  const restoCards = document.querySelectorAll('.resto-card')
  restoCards.forEach((card) => {
    card.addEventListener('click', () => {
      window.scrollTo({
        top: 0,
        style: 'smooth'
      })
    })
    form.focus();
  })
  // for each card
  // whenever you click on a card
  // scroll to top and highlight the input form

}

export { initScrollToSearch };
