const questions = document.querySelectorAll(".question");
const nextBtn = document.getElementById("nextBtn");
const prevBtn = document.getElementById("prevBtn");
const submitBtn = document.getElementById("submitBtn");
const progressBar = document.querySelector(".progress-bar");
const timerDisplay = document.getElementById("timer");

let current = 0;
let timeLeft = 10;
let timer;

function showQuestion(i) {
    questions.forEach((q, index) => {
        q.classList.toggle("active", index === i);
    });

    progressBar.style.width =
        ((i + 1) / questions.length) * 100 + "%";

    prevBtn.style.display =
        i === 0 ? "none" : "inline-block";

    nextBtn.style.display =
        i === questions.length - 1 ? "none" : "inline-block";

    submitBtn.style.display =
        i === questions.length - 1 ? "inline-block" : "none";

    startTimer();
}

nextBtn.onclick = () => {
    if (current < questions.length - 1) {
        current++;
        showQuestion(current);
    }
};

prevBtn.onclick = () => {
    if (current > 0) {
        current--;
        showQuestion(current);
    }
};

document.querySelectorAll("input[type=radio]").forEach(r => {
    r.addEventListener("change", () => {

        clearInterval(timer);

        setTimeout(() => {
            if (current < questions.length - 1) {
                current++;
                showQuestion(current);
            }
        }, 200);

    });
});
function startTimer() {
    clearInterval(timer);

    timeLeft = 10;
    timerDisplay.textContent = timeLeft;

    timer = setInterval(() => {
        timeLeft--;
        timerDisplay.textContent = timeLeft;

        if (timeLeft <= 0) {
            clearInterval(timer);

            if (current < questions.length - 1) {
                current++;
                showQuestion(current);
            } else {
                submitBtn.style.display = "inline-block";
            }
        }
    }, 1000);
}
submitBtn.onclick = () => {
    document.getElementById("quizForm").submit();
};
showQuestion(0);
