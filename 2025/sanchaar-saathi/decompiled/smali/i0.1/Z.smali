.class public abstract Li0/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li0/Z$a;,
        Li0/Z$b;,
        Li0/Z$c;,
        Li0/Z$d;,
        Li0/Z$e;
    }
.end annotation


# static fields
.field public static final f:Li0/Z$a;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public d:Z

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li0/Z$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li0/Z$a;-><init>(Lv3/g;)V

    sput-object v0, Li0/Z;->f:Li0/Z$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Li0/Z;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Li0/Z;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Li0/Z;Li0/Z$c;)V
    .locals 0

    invoke-static {p0, p1}, Li0/Z;->h(Li0/Z;Li0/Z$c;)V

    return-void
.end method

.method public static synthetic b(Li0/Z;Li0/Z$c;)V
    .locals 0

    invoke-static {p0, p1}, Li0/Z;->i(Li0/Z;Li0/Z$c;)V

    return-void
.end method

.method public static final h(Li0/Z;Li0/Z$c;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$operation"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/Z;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Li0/Z$d;->h()Li0/Z$d$b;

    move-result-object v0

    invoke-virtual {p1}, Li0/Z$d;->i()Li0/p;

    move-result-object p1

    iget-object p1, p1, Li0/p;->L:Landroid/view/View;

    const-string v1, "operation.fragment.mView"

    invoke-static {p1, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Li0/Z$d$b;->f(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public static final i(Li0/Z;Li0/Z$c;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$operation"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li0/Z;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Li0/Z;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final u(Landroid/view/ViewGroup;Li0/I;)Li0/Z;
    .locals 1

    sget-object v0, Li0/Z;->f:Li0/Z$a;

    invoke-virtual {v0, p0, p1}, Li0/Z$a;->a(Landroid/view/ViewGroup;Li0/I;)Li0/Z;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Landroid/view/ViewGroup;Li0/a0;)Li0/Z;
    .locals 1

    sget-object v0, Li0/Z;->f:Li0/Z$a;

    invoke-virtual {v0, p0, p1}, Li0/Z$a;->b(Landroid/view/ViewGroup;Li0/a0;)Li0/Z;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 4

    iget-object v0, p0, Li0/Z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/Z$d;

    invoke-virtual {v1}, Li0/Z$d;->j()Li0/Z$d$a;

    move-result-object v2

    sget-object v3, Li0/Z$d$a;->f:Li0/Z$d$a;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Li0/Z$d;->i()Li0/p;

    move-result-object v2

    invoke-virtual {v2}, Li0/p;->r1()Landroid/view/View;

    move-result-object v2

    const-string v3, "fragment.requireView()"

    invoke-static {v2, v3}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Li0/Z$d$b;->e:Li0/Z$d$b$a;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v3, v2}, Li0/Z$d$b$a;->b(I)Li0/Z$d$b;

    move-result-object v2

    sget-object v3, Li0/Z$d$a;->e:Li0/Z$d$a;

    invoke-virtual {v1, v2, v3}, Li0/Z$d;->p(Li0/Z$d$b;Li0/Z$d$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final B(Z)V
    .locals 0

    iput-boolean p1, p0, Li0/Z;->d:Z

    return-void
.end method

.method public final c(Li0/Z$d;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Li0/Z$d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Li0/Z$d;->h()Li0/Z$d$b;

    move-result-object v0

    invoke-virtual {p1}, Li0/Z$d;->i()Li0/p;

    move-result-object v1

    invoke-virtual {v1}, Li0/p;->r1()Landroid/view/View;

    move-result-object v1

    const-string v2, "operation.fragment.requireView()"

    invoke-static {v1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Li0/Z$d$b;->f(Landroid/view/View;Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Li0/Z$d;->r(Z)V

    :cond_0
    return-void
.end method

.method public abstract d(Ljava/util/List;Z)V
.end method

.method public e(Ljava/util/List;)V
    .locals 6

    const-string v0, "operations"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/Z$d;

    invoke-virtual {v2}, Li0/Z$d;->g()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Li3/t;->p(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Li3/w;->L(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Li3/w;->I(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li0/Z$b;

    iget-object v5, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Li0/Z$b;->d(Landroid/view/ViewGroup;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/Z$d;

    invoke-virtual {p0, v3}, Li0/Z;->c(Li0/Z$d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li3/w;->I(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/Z$d;

    invoke-virtual {v1}, Li0/Z$d;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Li0/Z$d;->e()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    const-string v1, "SpecialEffectsController: Completing Back "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Li0/Z;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Li0/Z;->z(Ljava/util/List;)V

    iget-object v0, p0, Li0/Z;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Li0/Z;->e(Ljava/util/List;)V

    return-void
.end method

.method public final g(Li0/Z$d$b;Li0/Z$d$a;Li0/O;)V
    .locals 3

    iget-object v0, p0, Li0/Z;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p3}, Li0/O;->k()Li0/p;

    move-result-object v1

    const-string v2, "fragmentStateManager.fragment"

    invoke-static {v1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Li0/Z;->o(Li0/p;)Li0/Z$d;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Li0/O;->k()Li0/p;

    move-result-object v1

    iget-boolean v1, v1, Li0/p;->p:Z

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Li0/O;->k()Li0/p;

    move-result-object v1

    const-string v2, "fragmentStateManager.fragment"

    invoke-static {v1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Li0/Z;->p(Li0/p;)Li0/Z$d;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Li0/Z$d;->p(Li0/Z$d$b;Li0/Z$d$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    new-instance v1, Li0/Z$c;

    invoke-direct {v1, p1, p2, p3}, Li0/Z$c;-><init>(Li0/Z$d$b;Li0/Z$d$a;Li0/O;)V

    iget-object p1, p0, Li0/Z;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Li0/X;

    invoke-direct {p1, p0, v1}, Li0/X;-><init>(Li0/Z;Li0/Z$c;)V

    invoke-virtual {v1, p1}, Li0/Z$d;->a(Ljava/lang/Runnable;)V

    new-instance p1, Li0/Y;

    invoke-direct {p1, p0, v1}, Li0/Y;-><init>(Li0/Z;Li0/Z$c;)V

    invoke-virtual {v1, p1}, Li0/Z$d;->a(Ljava/lang/Runnable;)V

    sget-object p1, Lh3/n;->a:Lh3/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final j(Li0/Z$d$b;Li0/O;)V
    .locals 2

    const-string v0, "finalState"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentStateManager"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Li0/O;->k()Li0/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Li0/Z$d$a;->f:Li0/Z$d$a;

    invoke-virtual {p0, p1, v0, p2}, Li0/Z;->g(Li0/Z$d$b;Li0/Z$d$a;Li0/O;)V

    return-void
.end method

.method public final k(Li0/O;)V
    .locals 2

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Li0/O;->k()Li0/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Li0/Z$d$b;->h:Li0/Z$d$b;

    sget-object v1, Li0/Z$d$a;->e:Li0/Z$d$a;

    invoke-virtual {p0, v0, v1, p1}, Li0/Z;->g(Li0/Z$d$b;Li0/Z$d$a;Li0/O;)V

    return-void
.end method

.method public final l(Li0/O;)V
    .locals 2

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Li0/O;->k()Li0/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Li0/Z$d$b;->f:Li0/Z$d$b;

    sget-object v1, Li0/Z$d$a;->g:Li0/Z$d$a;

    invoke-virtual {p0, v0, v1, p1}, Li0/Z;->g(Li0/Z$d$b;Li0/Z$d$a;Li0/O;)V

    return-void
.end method

.method public final m(Li0/O;)V
    .locals 2

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Li0/O;->k()Li0/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Li0/Z$d$b;->g:Li0/Z$d$b;

    sget-object v1, Li0/Z$d$a;->e:Li0/Z$d$a;

    invoke-virtual {p0, v0, v1, p1}, Li0/Z;->g(Li0/Z$d$b;Li0/Z$d$a;Li0/O;)V

    return-void
.end method

.method public final n()V
    .locals 11

    const/4 v0, 0x1

    iget-boolean v1, p0, Li0/Z;->e:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Li0/Z;->q()V

    iput-boolean v2, p0, Li0/Z;->d:Z

    return-void

    :cond_1
    iget-object v1, p0, Li0/Z;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Li0/Z;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    iget-object v0, p0, Li0/Z;->c:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Li3/w;->K(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Li0/Z;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/Z$d;

    invoke-static {v4}, Li0/I;->I0(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " with no incoming pendingOperations"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_3
    :goto_1
    iget-object v5, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v2}, Li0/Z$d;->d(Landroid/view/ViewGroup;Z)V

    invoke-virtual {v3}, Li0/Z$d;->m()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Li0/Z;->c:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Li0/Z;->c:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Li3/w;->K(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Li0/Z;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li0/Z$d;

    invoke-static {v4}, Li0/I;->I0(I)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v6, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Li0/Z$d;->i()Li0/p;

    move-result-object v7

    iget-boolean v7, v7, Li0/p;->p:Z

    invoke-virtual {v5, v6, v7}, Li0/Z$d;->d(Landroid/view/ViewGroup;Z)V

    invoke-virtual {v5}, Li0/Z$d;->m()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Li0/Z;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Li0/Z;->A()V

    iget-object v3, p0, Li0/Z;->b:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Li3/w;->K(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_8

    monitor-exit v1

    return-void

    :cond_8
    :try_start_1
    iget-object v5, p0, Li0/Z;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Li0/Z;->c:Ljava/util/List;

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v4}, Li0/I;->I0(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "FragmentManager"

    const-string v6, "SpecialEffectsController: Executing pending operations"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-boolean v5, p0, Li0/Z;->d:Z

    invoke-virtual {p0, v3, v5}, Li0/Z;->d(Ljava/util/List;Z)V

    new-instance v5, Lv3/t;

    invoke-direct {v5}, Lv3/t;-><init>()V

    iput-boolean v0, v5, Lv3/t;->e:Z

    move-object v6, v3

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v0

    :cond_a
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Li0/Z$d;

    invoke-virtual {v8}, Li0/Z$d;->g()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v8}, Li0/Z$d;->g()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_b

    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_4

    :cond_b
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li0/Z$b;

    invoke-virtual {v10}, Li0/Z$b;->b()Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_5

    :cond_d
    :goto_4
    move v9, v0

    goto :goto_6

    :cond_e
    :goto_5
    move v9, v2

    :goto_6
    iput-boolean v9, v5, Lv3/t;->e:Z

    invoke-virtual {v8}, Li0/Z$d;->i()Li0/p;

    move-result-object v8

    iget-boolean v8, v8, Li0/p;->p:Z

    if-nez v8, :cond_a

    move v7, v2

    goto :goto_3

    :cond_f
    iget-boolean v6, v5, Lv3/t;->e:Z

    if-eqz v6, :cond_11

    move-object v6, v3

    check-cast v6, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Li0/Z$d;

    invoke-virtual {v9}, Li0/Z$d;->g()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v8, v9}, Li3/t;->p(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_7

    :cond_10
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    move v6, v0

    goto :goto_8

    :cond_11
    move v6, v2

    :goto_8
    iput-boolean v6, v5, Lv3/t;->e:Z

    if-nez v7, :cond_12

    invoke-virtual {p0, v3}, Li0/Z;->z(Ljava/util/List;)V

    invoke-virtual {p0, v3}, Li0/Z;->e(Ljava/util/List;)V

    goto :goto_a

    :cond_12
    if-eqz v6, :cond_13

    invoke-virtual {p0, v3}, Li0/Z;->z(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v6, v2

    :goto_9
    if-ge v6, v5, :cond_13

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li0/Z$d;

    invoke-virtual {p0, v7}, Li0/Z;->c(Li0/Z$d;)V

    add-int/2addr v6, v0

    goto :goto_9

    :cond_13
    :goto_a
    iput-boolean v2, p0, Li0/Z;->d:Z

    invoke-static {v4}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "FragmentManager"

    const-string v2, "SpecialEffectsController: Finished executing pending operations"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    sget-object v0, Lh3/n;->a:Lh3/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :goto_b
    monitor-exit v1

    throw v0
.end method

.method public final o(Li0/p;)Li0/Z$d;
    .locals 4

    iget-object v0, p0, Li0/Z;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Li0/Z$d;

    invoke-virtual {v2}, Li0/Z$d;->i()Li0/p;

    move-result-object v3

    invoke-static {v3, p1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Li0/Z$d;->l()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Li0/Z$d;

    return-object v1
.end method

.method public final p(Li0/p;)Li0/Z$d;
    .locals 4

    iget-object v0, p0, Li0/Z;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Li0/Z$d;

    invoke-virtual {v2}, Li0/Z$d;->i()Li0/p;

    move-result-object v3

    invoke-static {v3, p1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Li0/Z$d;->l()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Li0/Z$d;

    return-object v1
.end method

.method public final q()V
    .locals 9

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    iget-object v2, p0, Li0/Z;->b:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Li0/Z;->A()V

    iget-object v3, p0, Li0/Z;->b:Ljava/util/List;

    invoke-virtual {p0, v3}, Li0/Z;->z(Ljava/util/List;)V

    iget-object v3, p0, Li0/Z;->c:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Li3/w;->K(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li0/Z$d;

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_1

    const-string v5, ""

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not attached to window. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SpecialEffectsController: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Cancelling running operation "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Li0/Z$d;->c(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Li0/Z;->b:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Li3/w;->K(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li0/Z$d;

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_4

    const-string v5, ""

    goto :goto_3

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not attached to window. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SpecialEffectsController: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Cancelling pending operation "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Li0/Z$d;->c(Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_6
    sget-object v0, Lh3/n;->a:Lh3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :goto_4
    monitor-exit v2

    throw v0
.end method

.method public final r()V
    .locals 2

    iget-boolean v0, p0, Li0/Z;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    const-string v1, "SpecialEffectsController: Forcing postponed operations"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/Z;->e:Z

    invoke-virtual {p0}, Li0/Z;->n()V

    :cond_1
    return-void
.end method

.method public final s(Li0/O;)Li0/Z$d$a;
    .locals 4

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Li0/O;->k()Li0/p;

    move-result-object p1

    const-string v0, "fragmentStateManager.fragment"

    invoke-static {p1, v0}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Li0/Z;->o(Li0/p;)Li0/Z$d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li0/Z$d;->j()Li0/Z$d$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1}, Li0/Z;->p(Li0/p;)Li0/Z$d;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Li0/Z$d;->j()Li0/Z$d$a;

    move-result-object v1

    :cond_1
    const/4 p1, -0x1

    if-nez v0, :cond_2

    move v2, p1

    goto :goto_1

    :cond_2
    sget-object v2, Li0/Z$e;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    :goto_1
    if-eq v2, p1, :cond_3

    const/4 p1, 0x1

    if-eq v2, p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public final t()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Li0/Z;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final x()V
    .locals 8

    iget-object v0, p0, Li0/Z;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Li0/Z;->A()V

    iget-object v1, p0, Li0/Z;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Li0/Z$d;

    sget-object v5, Li0/Z$d$b;->e:Li0/Z$d$b$a;

    invoke-virtual {v4}, Li0/Z$d;->i()Li0/p;

    move-result-object v6

    iget-object v6, v6, Li0/p;->L:Landroid/view/View;

    const-string v7, "operation.fragment.mView"

    invoke-static {v6, v7}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Li0/Z$d$b$a;->a(Landroid/view/View;)Li0/Z$d$b;

    move-result-object v5

    invoke-virtual {v4}, Li0/Z$d;->h()Li0/Z$d$b;

    move-result-object v4

    sget-object v6, Li0/Z$d$b;->g:Li0/Z$d$b;

    if-ne v4, v6, :cond_0

    if-eq v5, v6, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Li0/Z$d;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Li0/Z$d;->i()Li0/p;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Li0/p;->e0()Z

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Li0/Z;->e:Z

    sget-object v1, Lh3/n;->a:Lh3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public final y(Ld/b;)V
    .locals 5

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Processing Progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ld/b;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Li0/Z;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/Z$d;

    invoke-virtual {v2}, Li0/Z$d;->g()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Li3/t;->p(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Li3/w;->L(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Li3/w;->I(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/Z$b;

    iget-object v4, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1, v4}, Li0/Z$b;->e(Ld/b;Landroid/view/ViewGroup;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final z(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/Z$d;

    invoke-virtual {v3}, Li0/Z$d;->q()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/Z$d;

    invoke-virtual {v2}, Li0/Z$d;->g()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Li3/t;->p(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Li3/w;->L(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Li3/w;->I(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/Z$b;

    iget-object v3, p0, Li0/Z;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Li0/Z$b;->g(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
