.class public final Ld/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/q$f;,
        Ld/q$g;,
        Ld/q$h;,
        Ld/q$i;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:LR/a;

.field public final c:Li3/h;

.field public d:Ld/p;

.field public e:Landroid/window/OnBackInvokedCallback;

.field public f:Landroid/window/OnBackInvokedDispatcher;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Ld/q;-><init>(Ljava/lang/Runnable;LR/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;LR/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/q;->a:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Ld/q;->b:LR/a;

    .line 4
    new-instance p1, Li3/h;

    invoke-direct {p1}, Li3/h;-><init>()V

    iput-object p1, p0, Ld/q;->c:Li3/h;

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-lt p1, p2, :cond_1

    const/16 p2, 0x22

    if-lt p1, p2, :cond_0

    .line 6
    sget-object p1, Ld/q$g;->a:Ld/q$g;

    new-instance p2, Ld/q$a;

    invoke-direct {p2, p0}, Ld/q$a;-><init>(Ld/q;)V

    new-instance v0, Ld/q$b;

    invoke-direct {v0, p0}, Ld/q$b;-><init>(Ld/q;)V

    new-instance v1, Ld/q$c;

    invoke-direct {v1, p0}, Ld/q$c;-><init>(Ld/q;)V

    new-instance v2, Ld/q$d;

    invoke-direct {v2, p0}, Ld/q$d;-><init>(Ld/q;)V

    invoke-virtual {p1, p2, v0, v1, v2}, Ld/q$g;->a(Lu3/l;Lu3/l;Lu3/a;Lu3/a;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Ld/q$f;->a:Ld/q$f;

    new-instance p2, Ld/q$e;

    invoke-direct {p2, p0}, Ld/q$e;-><init>(Ld/q;)V

    invoke-virtual {p1, p2}, Ld/q$f;->b(Lu3/a;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Ld/q;->e:Landroid/window/OnBackInvokedCallback;

    :cond_1
    return-void
.end method

.method public static final synthetic a(Ld/q;)Ld/p;
    .locals 0

    iget-object p0, p0, Ld/q;->d:Ld/p;

    return-object p0
.end method

.method public static final synthetic b(Ld/q;)Li3/h;
    .locals 0

    iget-object p0, p0, Ld/q;->c:Li3/h;

    return-object p0
.end method

.method public static final synthetic c(Ld/q;)V
    .locals 0

    invoke-virtual {p0}, Ld/q;->j()V

    return-void
.end method

.method public static final synthetic d(Ld/q;Ld/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Ld/q;->l(Ld/b;)V

    return-void
.end method

.method public static final synthetic e(Ld/q;Ld/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Ld/q;->m(Ld/b;)V

    return-void
.end method

.method public static final synthetic f(Ld/q;Ld/p;)V
    .locals 0

    iput-object p1, p0, Ld/q;->d:Ld/p;

    return-void
.end method

.method public static final synthetic g(Ld/q;)V
    .locals 0

    invoke-virtual {p0}, Ld/q;->p()V

    return-void
.end method


# virtual methods
.method public final h(Landroidx/lifecycle/k;Ld/p;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/k;->b()Landroidx/lifecycle/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/g;->b()Landroidx/lifecycle/g$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/g$b;->e:Landroidx/lifecycle/g$b;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ld/q$h;

    invoke-direct {v0, p0, p1, p2}, Ld/q$h;-><init>(Ld/q;Landroidx/lifecycle/g;Ld/p;)V

    invoke-virtual {p2, v0}, Ld/p;->a(Ld/c;)V

    invoke-virtual {p0}, Ld/q;->p()V

    new-instance p1, Ld/q$j;

    invoke-direct {p1, p0}, Ld/q$j;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ld/p;->k(Lu3/a;)V

    return-void
.end method

.method public final i(Ld/p;)Ld/c;
    .locals 2

    const-string v0, "onBackPressedCallback"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld/q;->c:Li3/h;

    invoke-virtual {v0, p1}, Li3/h;->add(Ljava/lang/Object;)Z

    new-instance v0, Ld/q$i;

    invoke-direct {v0, p0, p1}, Ld/q$i;-><init>(Ld/q;Ld/p;)V

    invoke-virtual {p1, v0}, Ld/p;->a(Ld/c;)V

    invoke-virtual {p0}, Ld/q;->p()V

    new-instance v1, Ld/q$k;

    invoke-direct {v1, p0}, Ld/q$k;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ld/p;->k(Lu3/a;)V

    return-object v0
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Ld/q;->d:Ld/p;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/q;->c:Li3/h;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ld/p;

    invoke-virtual {v3}, Ld/p;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    move-object v0, v2

    check-cast v0, Ld/p;

    :cond_2
    iput-object v1, p0, Ld/q;->d:Ld/p;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ld/p;->c()V

    :cond_3
    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Ld/q;->d:Ld/p;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/q;->c:Li3/h;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ld/p;

    invoke-virtual {v3}, Ld/p;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    move-object v0, v2

    check-cast v0, Ld/p;

    :cond_2
    iput-object v1, p0, Ld/q;->d:Ld/p;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ld/p;->d()V

    return-void

    :cond_3
    iget-object v0, p0, Ld/q;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method public final l(Ld/b;)V
    .locals 3

    iget-object v0, p0, Ld/q;->d:Ld/p;

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/q;->c:Li3/h;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ld/p;

    invoke-virtual {v2}, Ld/p;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    check-cast v0, Ld/p;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ld/p;->e(Ld/b;)V

    :cond_3
    return-void
.end method

.method public final m(Ld/b;)V
    .locals 3

    iget-object v0, p0, Ld/q;->c:Li3/h;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ld/p;

    invoke-virtual {v2}, Ld/p;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ld/p;

    iput-object v1, p0, Ld/q;->d:Ld/p;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ld/p;->f(Ld/b;)V

    :cond_2
    return-void
.end method

.method public final n(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 1

    const-string v0, "invoker"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ld/q;->f:Landroid/window/OnBackInvokedDispatcher;

    iget-boolean p1, p0, Ld/q;->h:Z

    invoke-virtual {p0, p1}, Ld/q;->o(Z)V

    return-void
.end method

.method public final o(Z)V
    .locals 4

    iget-object v0, p0, Ld/q;->f:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, p0, Ld/q;->e:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Ld/q;->g:Z

    if-nez v3, :cond_0

    sget-object p1, Ld/q$f;->a:Ld/q$f;

    invoke-virtual {p1, v0, v2, v1}, Ld/q$f;->d(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/q;->g:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Ld/q;->g:Z

    if-eqz p1, :cond_1

    sget-object p1, Ld/q$f;->a:Ld/q$f;

    invoke-virtual {p1, v0, v1}, Ld/q$f;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v2, p0, Ld/q;->g:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 4

    iget-boolean v0, p0, Ld/q;->h:Z

    iget-object v1, p0, Ld/q;->c:Li3/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/p;

    invoke-virtual {v3}, Ld/p;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    iput-boolean v2, p0, Ld/q;->h:Z

    if-eq v2, v0, :cond_4

    iget-object v0, p0, Ld/q;->b:LR/a;

    if-eqz v0, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, LR/a;->accept(Ljava/lang/Object;)V

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_4

    invoke-virtual {p0, v2}, Ld/q;->o(Z)V

    :cond_4
    return-void
.end method
