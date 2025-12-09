.class public Li0/u$a;
.super Li0/A;
.source "SourceFile"

# interfaces
.implements LH/c;
.implements LH/d;
.implements LG/n;
.implements LG/o;
.implements Landroidx/lifecycle/I;
.implements Ld/s;
.implements Lf/e;
.implements Lx0/f;
.implements Li0/M;
.implements LS/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic h:Li0/u;


# direct methods
.method public constructor <init>(Li0/u;)V
    .locals 0

    iput-object p1, p0, Li0/u$a;->h:Li0/u;

    invoke-direct {p0, p1}, Li0/A;-><init>(Li0/u;)V

    return-void
.end method


# virtual methods
.method public B()V
    .locals 0

    invoke-virtual {p0}, Li0/u$a;->C()V

    return-void
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0}, Ld/h;->J()V

    return-void
.end method

.method public D()Li0/u;
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    return-object v0
.end method

.method public a(Li0/I;Li0/p;)V
    .locals 0

    iget-object p1, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {p1, p2}, Li0/u;->b0(Li0/p;)V

    return-void
.end method

.method public b()Landroidx/lifecycle/g;
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    iget-object v0, v0, Li0/u;->x:Landroidx/lifecycle/l;

    return-object v0
.end method

.method public c(LR/a;)V
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0, p1}, Ld/h;->c(LR/a;)V

    return-void
.end method

.method public d(LR/a;)V
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0, p1}, Ld/h;->d(LR/a;)V

    return-void
.end method

.method public e(LR/a;)V
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0, p1}, Ld/h;->e(LR/a;)V

    return-void
.end method

.method public g(LR/a;)V
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0, p1}, Ld/h;->g(LR/a;)V

    return-void
.end method

.method public h(LR/a;)V
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0, p1}, Ld/h;->h(LR/a;)V

    return-void
.end method

.method public i(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Ld/q;
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0}, Ld/h;->k()Ld/q;

    move-result-object v0

    return-object v0
.end method

.method public l()Lx0/d;
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0}, Ld/h;->l()Lx0/d;

    move-result-object v0

    return-object v0
.end method

.method public m(LR/a;)V
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0, p1}, Ld/h;->m(LR/a;)V

    return-void
.end method

.method public p()Lf/d;
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0}, Ld/h;->p()Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public r(LS/o;)V
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0, p1}, Ld/h;->r(LS/o;)V

    return-void
.end method

.method public s(LR/a;)V
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0, p1}, Ld/h;->s(LR/a;)V

    return-void
.end method

.method public t()Landroidx/lifecycle/H;
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0}, Ld/h;->t()Landroidx/lifecycle/H;

    move-result-object v0

    return-object v0
.end method

.method public u(LS/o;)V
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0, p1}, Ld/h;->u(LS/o;)V

    return-void
.end method

.method public w(LR/a;)V
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0, p1}, Ld/h;->w(LR/a;)V

    return-void
.end method

.method public x(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0, p1, p2, p3, p4}, Li0/u;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic y()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li0/u$a;->D()Li0/u;

    move-result-object v0

    return-object v0
.end method

.method public z()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Li0/u$a;->h:Li0/u;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method
