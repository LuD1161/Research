.class public Ld/l;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/k;
.implements Ld/s;
.implements Lx0/f;


# instance fields
.field public c:Landroidx/lifecycle/l;

.field public final d:Lx0/e;

.field public final e:Ld/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget-object p1, Lx0/e;->d:Lx0/e$a;

    invoke-virtual {p1, p0}, Lx0/e$a;->a(Lx0/f;)Lx0/e;

    move-result-object p1

    iput-object p1, p0, Ld/l;->d:Lx0/e;

    new-instance p1, Ld/q;

    new-instance p2, Ld/k;

    invoke-direct {p2, p0}, Ld/k;-><init>(Ld/l;)V

    invoke-direct {p1, p2}, Ld/q;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Ld/l;->e:Ld/q;

    return-void
.end method

.method public static synthetic a(Ld/l;)V
    .locals 0

    invoke-static {p0}, Ld/l;->e(Ld/l;)V

    return-void
.end method

.method public static final e(Ld/l;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ld/l;->d()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()Landroidx/lifecycle/g;
    .locals 1

    invoke-virtual {p0}, Ld/l;->c()Landroidx/lifecycle/l;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroidx/lifecycle/l;
    .locals 1

    iget-object v0, p0, Ld/l;->c:Landroidx/lifecycle/l;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/l;

    invoke-direct {v0, p0}, Landroidx/lifecycle/l;-><init>(Landroidx/lifecycle/k;)V

    iput-object v0, p0, Ld/l;->c:Landroidx/lifecycle/l;

    :cond_0
    return-object v0
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window!!.decorView"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroidx/lifecycle/J;->a(Landroid/view/View;Landroidx/lifecycle/k;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Ld/v;->a(Landroid/view/View;Ld/s;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lx0/g;->a(Landroid/view/View;Lx0/f;)V

    return-void
.end method

.method public final k()Ld/q;
    .locals 1

    iget-object v0, p0, Ld/l;->e:Ld/q;

    return-object v0
.end method

.method public l()Lx0/d;
    .locals 1

    iget-object v0, p0, Ld/l;->d:Lx0/e;

    invoke-virtual {v0}, Lx0/e;->b()Lx0/d;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Ld/l;->e:Ld/q;

    invoke-virtual {v0}, Ld/q;->k()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Ld/l;->e:Ld/q;

    invoke-static {p0}, Ld/j;->a(Ld/l;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    const-string v2, "onBackInvokedDispatcher"

    invoke-static {v1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ld/q;->n(Landroid/window/OnBackInvokedDispatcher;)V

    :cond_0
    iget-object v0, p0, Ld/l;->d:Lx0/e;

    invoke-virtual {v0, p1}, Lx0/e;->d(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ld/l;->c()Landroidx/lifecycle/l;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/g$a;->ON_CREATE:Landroidx/lifecycle/g$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "super.onSaveInstanceState()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ld/l;->d:Lx0/e;

    invoke-virtual {v1, v0}, Lx0/e;->e(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Ld/l;->c()Landroidx/lifecycle/l;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/g$a;->ON_RESUME:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Ld/l;->c()Landroidx/lifecycle/l;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/l;->c:Landroidx/lifecycle/l;

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ld/l;->d()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ld/l;->d()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ld/l;->d()V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
