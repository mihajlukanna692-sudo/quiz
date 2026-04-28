const questions = document.querySelectorAll(".question");
const nextBtn = document.getElementById("nextBtn");
const prevBtn = document.getElementById("prevBtn");
const submitBtn = document.getElementById("submitBtn");
const progressBar = document.querySelector(".progress-bar");

let current = 0;

function showQuestion(i) {
    questions.forEach((q, index) => {
        q.classList.toggle("active", index === i);
    });

    progressBar.style.width = (i / questions.length) * 100 + "%";

    prevBtn.style.display = i === 0 ? "none" : "inline-block";
    nextBtn.style.display = i === questions.length - 1 ? "none" : "inline-block";
    submitBtn.style.display = i === questions.length - 1 ? "inline-block" : "none";
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
        setTimeout(() => {
            if (current < questions.length - 1) {
                current++;
                showQuestion(current);
            }
        }, 200);
    });
});

showQuestion(0);