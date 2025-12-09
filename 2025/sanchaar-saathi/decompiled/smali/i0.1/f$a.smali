.class public final Li0/f$a;
.super Li0/Z$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final d:Li0/f$b;


# direct methods
.method public constructor <init>(Li0/f$b;)V
    .locals 1

    const-string v0, "animationInfo"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Li0/Z$b;-><init>()V

    iput-object p1, p0, Li0/f$a;->d:Li0/f$b;

    return-void
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "container"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/f$a;->d:Li0/f$b;

    invoke-virtual {v0}, Li0/f$f;->a()Li0/Z$d;

    move-result-object v0

    invoke-virtual {v0}, Li0/Z$d;->i()Li0/p;

    move-result-object v1

    iget-object v1, v1, Li0/p;->L:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p1, p0, Li0/f$a;->d:Li0/f$b;

    invoke-virtual {p1}, Li0/f$f;->a()Li0/Z$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Li0/Z$d;->f(Li0/Z$b;)V

    const/4 p1, 0x2

    invoke-static {p1}, Li0/I;->I0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation from operation "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has been cancelled."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d(Landroid/view/ViewGroup;)V
    .locals 5

    const-string v0, "container"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/f$a;->d:Li0/f$b;

    invoke-virtual {v0}, Li0/f$f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Li0/f$a;->d:Li0/f$b;

    invoke-virtual {p1}, Li0/f$f;->a()Li0/Z$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Li0/Z$d;->f(Li0/Z$b;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Li0/f$a;->d:Li0/f$b;

    invoke-virtual {v1}, Li0/f$f;->a()Li0/Z$d;

    move-result-object v1

    invoke-virtual {v1}, Li0/Z$d;->i()Li0/p;

    move-result-object v2

    iget-object v2, v2, Li0/p;->L:Landroid/view/View;

    iget-object v3, p0, Li0/f$a;->d:Li0/f$b;

    const-string v4, "context"

    invoke-static {v0, v4}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Li0/f$b;->c(Landroid/content/Context;)Li0/v$a;

    move-result-object v0

    const-string v3, "Required value was null."

    if-eqz v0, :cond_4

    iget-object v0, v0, Li0/v$a;->a:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Li0/Z$d;->h()Li0/Z$d$b;

    move-result-object v3

    sget-object v4, Li0/Z$d$b;->f:Li0/Z$d$b;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Li0/f$a;->d:Li0/f$b;

    invoke-virtual {p1}, Li0/f$f;->a()Li0/Z$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Li0/Z$d;->f(Li0/Z$b;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v3, Li0/v$b;

    invoke-direct {v3, v0, p1, v2}, Li0/v$b;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v0, Li0/f$a$a;

    invoke-direct {v0, v1, p1, v2, p0}, Li0/f$a$a;-><init>(Li0/Z$d;Landroid/view/ViewGroup;Landroid/view/View;Li0/f$a;)V

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x2

    invoke-static {p1}, Li0/I;->I0(I)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animation from operation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has started."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()Li0/f$b;
    .locals 1

    iget-object v0, p0, Li0/f$a;->d:Li0/f$b;

    return-object v0
.end method
