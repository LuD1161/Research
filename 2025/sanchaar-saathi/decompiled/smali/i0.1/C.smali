.class public final Li0/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li0/I;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Li0/I;)V
    .locals 1

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/C;->a:Li0/I;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final a(Li0/p;Landroid/os/Bundle;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->y0()Li0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->x0()Li0/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Li0/C;->a(Li0/p;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    throw p1

    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final b(Li0/p;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->v0()Li0/A;

    move-result-object v0

    invoke-virtual {v0}, Li0/A;->o()Landroid/content/Context;

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->y0()Li0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->x0()Li0/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Li0/C;->b(Li0/p;Z)V

    :cond_0
    iget-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    throw p1

    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final c(Li0/p;Landroid/os/Bundle;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->y0()Li0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->x0()Li0/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Li0/C;->c(Li0/p;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    throw p1

    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final d(Li0/p;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->y0()Li0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->x0()Li0/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Li0/C;->d(Li0/p;Z)V

    :cond_0
    iget-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    throw p1

    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final e(Li0/p;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->y0()Li0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->x0()Li0/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Li0/C;->e(Li0/p;Z)V

    :cond_0
    iget-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    throw p1

    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final f(Li0/p;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->y0()Li0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->x0()Li0/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Li0/C;->f(Li0/p;Z)V

    :cond_0
    iget-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    throw p1

    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final g(Li0/p;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->v0()Li0/A;

    move-result-object v0

    invoke-virtual {v0}, Li0/A;->o()Landroid/content/Context;

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->y0()Li0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->x0()Li0/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Li0/C;->g(Li0/p;Z)V

    :cond_0
    iget-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    throw p1

    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final h(Li0/p;Landroid/os/Bundle;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->y0()Li0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->x0()Li0/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Li0/C;->h(Li0/p;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    throw p1

    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final i(Li0/p;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->y0()Li0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->x0()Li0/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Li0/C;->i(Li0/p;Z)V

    :cond_0
    iget-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    throw p1

    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final j(Li0/p;Landroid/os/Bundle;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outState"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->y0()Li0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->x0()Li0/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Li0/C;->j(Li0/p;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    throw p1

    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final k(Li0/p;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->y0()Li0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->x0()Li0/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Li0/C;->k(Li0/p;Z)V

    :cond_0
    iget-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    throw p1

    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final l(Li0/p;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->y0()Li0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->x0()Li0/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Li0/C;->l(Li0/p;Z)V

    :cond_0
    iget-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    throw p1

    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final m(Li0/p;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->y0()Li0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->x0()Li0/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Li0/C;->m(Li0/p;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    throw p1

    :cond_1
    throw p1

    :cond_2
    return-void
.end method

.method public final n(Li0/p;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/C;->a:Li0/I;

    invoke-virtual {v0}, Li0/I;->y0()Li0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->x0()Li0/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Li0/C;->n(Li0/p;Z)V

    :cond_0
    iget-object p1, p0, Li0/C;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    throw p1

    :cond_1
    throw p1

    :cond_2
    return-void
.end method
