.class public Li0/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/f;
.implements Lx0/f;
.implements Landroidx/lifecycle/I;


# instance fields
.field public final c:Li0/p;

.field public final d:Landroidx/lifecycle/H;

.field public final e:Ljava/lang/Runnable;

.field public f:Landroidx/lifecycle/l;

.field public g:Lx0/e;


# direct methods
.method public constructor <init>(Li0/p;Landroidx/lifecycle/H;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Li0/V;->f:Landroidx/lifecycle/l;

    iput-object v0, p0, Li0/V;->g:Lx0/e;

    iput-object p1, p0, Li0/V;->c:Li0/p;

    iput-object p2, p0, Li0/V;->d:Landroidx/lifecycle/H;

    iput-object p3, p0, Li0/V;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/g$a;)V
    .locals 1

    iget-object v0, p0, Li0/V;->f:Landroidx/lifecycle/l;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    return-void
.end method

.method public b()Landroidx/lifecycle/g;
    .locals 1

    invoke-virtual {p0}, Li0/V;->c()V

    iget-object v0, p0, Li0/V;->f:Landroidx/lifecycle/l;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Li0/V;->f:Landroidx/lifecycle/l;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/l;

    invoke-direct {v0, p0}, Landroidx/lifecycle/l;-><init>(Landroidx/lifecycle/k;)V

    iput-object v0, p0, Li0/V;->f:Landroidx/lifecycle/l;

    invoke-static {p0}, Lx0/e;->a(Lx0/f;)Lx0/e;

    move-result-object v0

    iput-object v0, p0, Li0/V;->g:Lx0/e;

    invoke-virtual {v0}, Lx0/e;->c()V

    iget-object v0, p0, Li0/V;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Li0/V;->f:Landroidx/lifecycle/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Li0/V;->g:Lx0/e;

    invoke-virtual {v0, p1}, Lx0/e;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Li0/V;->g:Lx0/e;

    invoke-virtual {v0, p1}, Lx0/e;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method public g(Landroidx/lifecycle/g$b;)V
    .locals 1

    iget-object v0, p0, Li0/V;->f:Landroidx/lifecycle/l;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/l;->m(Landroidx/lifecycle/g$b;)V

    return-void
.end method

.method public l()Lx0/d;
    .locals 1

    invoke-virtual {p0}, Li0/V;->c()V

    iget-object v0, p0, Li0/V;->g:Lx0/e;

    invoke-virtual {v0}, Lx0/e;->b()Lx0/d;

    move-result-object v0

    return-object v0
.end method

.method public o()Lm0/a;
    .locals 3

    iget-object v0, p0, Li0/V;->c:Li0/p;

    invoke-virtual {v0}, Li0/p;->q1()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lm0/b;

    invoke-direct {v1}, Lm0/b;-><init>()V

    if-eqz v0, :cond_2

    sget-object v2, Landroidx/lifecycle/G$a;->e:Lm0/a$b;

    invoke-virtual {v1, v2, v0}, Lm0/b;->b(Lm0/a$b;Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Landroidx/lifecycle/A;->a:Lm0/a$b;

    iget-object v2, p0, Li0/V;->c:Li0/p;

    invoke-virtual {v1, v0, v2}, Lm0/b;->b(Lm0/a$b;Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/A;->b:Lm0/a$b;

    invoke-virtual {v1, v0, p0}, Lm0/b;->b(Lm0/a$b;Ljava/lang/Object;)V

    iget-object v0, p0, Li0/V;->c:Li0/p;

    invoke-virtual {v0}, Li0/p;->r()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/lifecycle/A;->c:Lm0/a$b;

    iget-object v2, p0, Li0/V;->c:Li0/p;

    invoke-virtual {v2}, Li0/p;->r()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lm0/b;->b(Lm0/a$b;Ljava/lang/Object;)V

    :cond_3
    return-object v1
.end method

.method public t()Landroidx/lifecycle/H;
    .locals 1

    invoke-virtual {p0}, Li0/V;->c()V

    iget-object v0, p0, Li0/V;->d:Landroidx/lifecycle/H;

    return-object v0
.end method
