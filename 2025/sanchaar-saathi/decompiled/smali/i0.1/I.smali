.class public abstract Li0/I;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li0/I$l;,
        Li0/I$m;,
        Li0/I$n;,
        Li0/I$j;,
        Li0/I$k;
    }
.end annotation


# static fields
.field public static U:Z = false

.field public static V:Z = true


# instance fields
.field public A:Li0/p;

.field public B:Li0/z;

.field public C:Li0/z;

.field public D:Li0/a0;

.field public E:Li0/a0;

.field public F:Lf/c;

.field public G:Lf/c;

.field public H:Lf/c;

.field public I:Ljava/util/ArrayDeque;

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Ljava/util/ArrayList;

.field public P:Ljava/util/ArrayList;

.field public Q:Ljava/util/ArrayList;

.field public R:Li0/L;

.field public S:Lj0/c$c;

.field public T:Ljava/lang/Runnable;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Li0/P;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Li0/B;

.field public g:Ld/q;

.field public h:Li0/a;

.field public i:Z

.field public final j:Ld/p;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final l:Ljava/util/Map;

.field public final m:Ljava/util/Map;

.field public final n:Ljava/util/Map;

.field public o:Ljava/util/ArrayList;

.field public final p:Li0/C;

.field public final q:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final r:LR/a;

.field public final s:LR/a;

.field public final t:LR/a;

.field public final u:LR/a;

.field public final v:LS/o;

.field public w:I

.field public x:Li0/A;

.field public y:Li0/w;

.field public z:Li0/p;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li0/I;->a:Ljava/util/ArrayList;

    new-instance v0, Li0/P;

    invoke-direct {v0}, Li0/P;-><init>()V

    iput-object v0, p0, Li0/I;->c:Li0/P;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li0/I;->d:Ljava/util/ArrayList;

    new-instance v0, Li0/B;

    invoke-direct {v0, p0}, Li0/B;-><init>(Li0/I;)V

    iput-object v0, p0, Li0/I;->f:Li0/B;

    const/4 v0, 0x0

    iput-object v0, p0, Li0/I;->h:Li0/a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Li0/I;->i:Z

    new-instance v2, Li0/I$b;

    invoke-direct {v2, p0, v1}, Li0/I$b;-><init>(Li0/I;Z)V

    iput-object v2, p0, Li0/I;->j:Ld/p;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Li0/I;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Li0/I;->l:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Li0/I;->m:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Li0/I;->n:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Li0/I;->o:Ljava/util/ArrayList;

    new-instance v1, Li0/C;

    invoke-direct {v1, p0}, Li0/C;-><init>(Li0/I;)V

    iput-object v1, p0, Li0/I;->p:Li0/C;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Li0/I;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Li0/D;

    invoke-direct {v1, p0}, Li0/D;-><init>(Li0/I;)V

    iput-object v1, p0, Li0/I;->r:LR/a;

    new-instance v1, Li0/E;

    invoke-direct {v1, p0}, Li0/E;-><init>(Li0/I;)V

    iput-object v1, p0, Li0/I;->s:LR/a;

    new-instance v1, Li0/F;

    invoke-direct {v1, p0}, Li0/F;-><init>(Li0/I;)V

    iput-object v1, p0, Li0/I;->t:LR/a;

    new-instance v1, Li0/G;

    invoke-direct {v1, p0}, Li0/G;-><init>(Li0/I;)V

    iput-object v1, p0, Li0/I;->u:LR/a;

    new-instance v1, Li0/I$c;

    invoke-direct {v1, p0}, Li0/I$c;-><init>(Li0/I;)V

    iput-object v1, p0, Li0/I;->v:LS/o;

    const/4 v1, -0x1

    iput v1, p0, Li0/I;->w:I

    iput-object v0, p0, Li0/I;->B:Li0/z;

    new-instance v1, Li0/I$d;

    invoke-direct {v1, p0}, Li0/I$d;-><init>(Li0/I;)V

    iput-object v1, p0, Li0/I;->C:Li0/z;

    iput-object v0, p0, Li0/I;->D:Li0/a0;

    new-instance v0, Li0/I$e;

    invoke-direct {v0, p0}, Li0/I$e;-><init>(Li0/I;)V

    iput-object v0, p0, Li0/I;->E:Li0/a0;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Li0/I;->I:Ljava/util/ArrayDeque;

    new-instance v0, Li0/I$f;

    invoke-direct {v0, p0}, Li0/I$f;-><init>(Li0/I;)V

    iput-object v0, p0, Li0/I;->T:Ljava/lang/Runnable;

    return-void
.end method

.method public static C0(Landroid/view/View;)Li0/p;
    .locals 1

    sget v0, Lh0/b;->a:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Li0/p;

    if-eqz v0, :cond_0

    check-cast p0, Li0/p;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static I0(I)Z
    .locals 1

    sget-boolean v0, Li0/I;->U:Z

    if-nez v0, :cond_1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic a(Li0/I;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Li0/I;->S0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic b(Li0/I;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Li0/I;->Q0()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Li0/I;LG/r;)V
    .locals 0

    invoke-virtual {p0, p1}, Li0/I;->U0(LG/r;)V

    return-void
.end method

.method public static c0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li0/a;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Li0/a;->p(I)V

    invoke-virtual {v0}, Li0/a;->u()V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li0/a;->p(I)V

    invoke-virtual {v0}, Li0/a;->t()V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic d(Li0/I;LG/f;)V
    .locals 0

    invoke-virtual {p0, p1}, Li0/I;->T0(LG/f;)V

    return-void
.end method

.method public static synthetic e(Li0/I;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Li0/I;->R0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic f(Li0/I;)V
    .locals 0

    invoke-virtual {p0}, Li0/I;->X()V

    return-void
.end method

.method public static synthetic g(Li0/I;)Li0/P;
    .locals 0

    iget-object p0, p0, Li0/I;->c:Li0/P;

    return-object p0
.end method

.method public static k0(Landroid/view/View;)Li0/I;
    .locals 4

    invoke-static {p0}, Li0/I;->l0(Landroid/view/View;)Li0/p;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li0/p;->a0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Li0/p;->s()Li0/I;

    move-result-object p0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " that owns View "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has already been destroyed. Nested fragments should always use the child FragmentManager."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_3

    instance-of v1, v0, Li0/u;

    if-eqz v1, :cond_2

    check-cast v0, Li0/u;

    goto :goto_1

    :cond_2
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Li0/u;->T()Li0/I;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not within a subclass of FragmentActivity."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static l0(Landroid/view/View;)Li0/p;
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0}, Li0/I;->C0(Landroid/view/View;)Li0/p;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static l1(I)I
    .locals 3

    const/16 v0, 0x2002

    const/16 v1, 0x1001

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1004

    const/16 v1, 0x2005

    if-eq p0, v1, :cond_2

    const/16 v2, 0x1003

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public A(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Li0/I;->w:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/p;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Li0/p;->T0(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public A0()Li0/a0;
    .locals 1

    iget-object v0, p0, Li0/I;->D:Li0/a0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Li0/I;->z:Li0/p;

    if-eqz v0, :cond_1

    iget-object v0, v0, Li0/p;->w:Li0/I;

    invoke-virtual {v0}, Li0/I;->A0()Li0/a0;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Li0/I;->E:Li0/a0;

    return-object v0
.end method

.method public B()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/I;->K:Z

    iput-boolean v0, p0, Li0/I;->L:Z

    iget-object v1, p0, Li0/I;->R:Li0/L;

    invoke-virtual {v1, v0}, Li0/L;->n(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li0/I;->S(I)V

    return-void
.end method

.method public B0()Lj0/c$c;
    .locals 1

    iget-object v0, p0, Li0/I;->S:Lj0/c$c;

    return-object v0
.end method

.method public C(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    iget v0, p0, Li0/I;->w:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li0/p;

    if-eqz v5, :cond_1

    invoke-virtual {p0, v5}, Li0/I;->M0(Li0/p;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, p1, p2}, Li0/p;->V0(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_0

    :cond_3
    iget-object p1, p0, Li0/I;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    :goto_1
    iget-object p1, p0, Li0/I;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Li0/I;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li0/p;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Li0/p;->v0()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iput-object v3, p0, Li0/I;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public D()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/I;->M:Z

    invoke-virtual {p0, v0}, Li0/I;->a0(Z)Z

    invoke-virtual {p0}, Li0/I;->X()V

    invoke-virtual {p0}, Li0/I;->s()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Li0/I;->S(I)V

    iget-object v0, p0, Li0/I;->x:Li0/A;

    instance-of v1, v0, LH/d;

    if-eqz v1, :cond_0

    check-cast v0, LH/d;

    iget-object v1, p0, Li0/I;->s:LR/a;

    invoke-interface {v0, v1}, LH/d;->e(LR/a;)V

    :cond_0
    iget-object v0, p0, Li0/I;->x:Li0/A;

    instance-of v1, v0, LH/c;

    if-eqz v1, :cond_1

    check-cast v0, LH/c;

    iget-object v1, p0, Li0/I;->r:LR/a;

    invoke-interface {v0, v1}, LH/c;->s(LR/a;)V

    :cond_1
    iget-object v0, p0, Li0/I;->x:Li0/A;

    instance-of v1, v0, LG/n;

    if-eqz v1, :cond_2

    check-cast v0, LG/n;

    iget-object v1, p0, Li0/I;->t:LR/a;

    invoke-interface {v0, v1}, LG/n;->w(LR/a;)V

    :cond_2
    iget-object v0, p0, Li0/I;->x:Li0/A;

    instance-of v1, v0, LG/o;

    if-eqz v1, :cond_3

    check-cast v0, LG/o;

    iget-object v1, p0, Li0/I;->u:LR/a;

    invoke-interface {v0, v1}, LG/o;->m(LR/a;)V

    :cond_3
    iget-object v0, p0, Li0/I;->x:Li0/A;

    instance-of v1, v0, LS/l;

    if-eqz v1, :cond_4

    iget-object v1, p0, Li0/I;->z:Li0/p;

    if-nez v1, :cond_4

    check-cast v0, LS/l;

    iget-object v1, p0, Li0/I;->v:LS/o;

    invoke-interface {v0, v1}, LS/l;->r(LS/o;)V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Li0/I;->x:Li0/A;

    iput-object v0, p0, Li0/I;->y:Li0/w;

    iput-object v0, p0, Li0/I;->z:Li0/p;

    iget-object v1, p0, Li0/I;->g:Ld/q;

    if-eqz v1, :cond_5

    iget-object v1, p0, Li0/I;->j:Ld/p;

    invoke-virtual {v1}, Ld/p;->h()V

    iput-object v0, p0, Li0/I;->g:Ld/q;

    :cond_5
    iget-object v0, p0, Li0/I;->F:Lf/c;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lf/c;->c()V

    iget-object v0, p0, Li0/I;->G:Lf/c;

    invoke-virtual {v0}, Lf/c;->c()V

    iget-object v0, p0, Li0/I;->H:Lf/c;

    invoke-virtual {v0}, Lf/c;->c()V

    :cond_6
    return-void
.end method

.method public D0(Li0/p;)Landroidx/lifecycle/H;
    .locals 1

    iget-object v0, p0, Li0/I;->R:Li0/L;

    invoke-virtual {v0, p1}, Li0/L;->k(Li0/p;)Landroidx/lifecycle/H;

    move-result-object p1

    return-object p1
.end method

.method public E()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li0/I;->S(I)V

    return-void
.end method

.method public E0()V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li0/I;->a0(Z)Z

    sget-boolean v1, Li0/I;->V:Z

    const/4 v2, 0x3

    const-string v3, "FragmentManager"

    if-eqz v1, :cond_5

    iget-object v1, p0, Li0/I;->h:Li0/a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Li0/I;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v5, p0, Li0/I;->h:Li0/a;

    invoke-virtual {p0, v5}, Li0/I;->n0(Li0/a;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Li0/I;->o:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li0/p;

    throw v4

    :cond_1
    iget-object v1, p0, Li0/I;->h:Li0/a;

    iget-object v1, v1, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li0/Q$a;

    iget-object v5, v5, Li0/Q$a;->b:Li0/p;

    if-eqz v5, :cond_2

    iput-boolean v6, v5, Li0/p;->p:Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Li0/I;->h:Li0/a;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1, v6, v0}, Li0/I;->u(Ljava/util/ArrayList;II)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/Z;

    invoke-virtual {v1}, Li0/Z;->f()V

    goto :goto_2

    :cond_4
    iput-object v4, p0, Li0/I;->h:Li0/a;

    invoke-virtual {p0}, Li0/I;->v1()V

    invoke-static {v2}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Op is being set to null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnBackPressedCallback enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/I;->j:Ld/p;

    invoke-virtual {v1}, Ld/p;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " for  FragmentManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    iget-object v0, p0, Li0/I;->j:Ld/p;

    invoke-virtual {v0}, Ld/p;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v2}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Calling popBackStackImmediate via onBackPressed callback"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0}, Li0/I;->b1()Z

    goto :goto_3

    :cond_7
    invoke-static {v2}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Calling onBackPressed via onBackPressed callback"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Li0/I;->g:Ld/q;

    invoke-virtual {v0}, Ld/q;->k()V

    :cond_9
    :goto_3
    return-void
.end method

.method public F(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Li0/I;->x:Li0/A;

    instance-of v0, v0, LH/d;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Li0/I;->u1(Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/p;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Li0/p;->b1()V

    if-eqz p1, :cond_1

    iget-object v1, v1, Li0/p;->y:Li0/I;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Li0/I;->F(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public F0(Li0/p;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Li0/p;->D:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Li0/p;->D:Z

    iget-boolean v1, p1, Li0/p;->R:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Li0/p;->R:Z

    invoke-virtual {p0, p1}, Li0/I;->r1(Li0/p;)V

    :cond_1
    return-void
.end method

.method public G(ZZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Li0/I;->x:Li0/A;

    instance-of v0, v0, LG/n;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Li0/I;->u1(Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/p;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Li0/p;->c1(Z)V

    if-eqz p2, :cond_1

    iget-object v1, v1, Li0/p;->y:Li0/I;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Li0/I;->G(ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public G0(Li0/p;)V
    .locals 1

    iget-boolean v0, p1, Li0/p;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Li0/I;->J0(Li0/p;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/I;->J:Z

    :cond_0
    return-void
.end method

.method public H(Li0/p;)V
    .locals 2

    iget-object v0, p0, Li0/I;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/M;

    invoke-interface {v1, p0, p1}, Li0/M;->a(Li0/I;Li0/p;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public H0()Z
    .locals 1

    iget-boolean v0, p0, Li0/I;->M:Z

    return v0
.end method

.method public I()V
    .locals 3

    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/p;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Li0/p;->b0()Z

    move-result v2

    invoke-virtual {v1, v2}, Li0/p;->z0(Z)V

    iget-object v1, v1, Li0/p;->y:Li0/I;

    invoke-virtual {v1}, Li0/I;->I()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public J(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Li0/I;->w:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/p;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Li0/p;->d1(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public final J0(Li0/p;)Z
    .locals 1

    iget-boolean v0, p1, Li0/p;->H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Li0/p;->I:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object p1, p1, Li0/p;->y:Li0/I;

    invoke-virtual {p1}, Li0/I;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public K(Landroid/view/Menu;)V
    .locals 2

    iget v0, p0, Li0/I;->w:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/p;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Li0/p;->e1(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final K0()Z
    .locals 2

    iget-object v0, p0, Li0/I;->z:Li0/p;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Li0/p;->a0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li0/I;->z:Li0/p;

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    invoke-virtual {v0}, Li0/I;->K0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final L(Li0/p;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Li0/I;->f0(Ljava/lang/String;)Li0/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Li0/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Li0/p;->i1()V

    :cond_0
    return-void
.end method

.method public L0(Li0/p;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Li0/p;->b0()Z

    move-result p1

    return p1
.end method

.method public M()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Li0/I;->S(I)V

    return-void
.end method

.method public M0(Li0/p;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Li0/p;->d0()Z

    move-result p1

    return p1
.end method

.method public N(ZZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Li0/I;->x:Li0/A;

    instance-of v0, v0, LG/o;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Li0/I;->u1(Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/p;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Li0/p;->g1(Z)V

    if-eqz p2, :cond_1

    iget-object v1, v1, Li0/p;->y:Li0/I;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Li0/I;->N(ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public N0(Li0/p;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Li0/p;->w:Li0/I;

    invoke-virtual {v1}, Li0/I;->z0()Li0/p;

    move-result-object v2

    invoke-virtual {p1, v2}, Li0/p;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Li0/I;->z:Li0/p;

    invoke-virtual {p0, p1}, Li0/I;->N0(Li0/p;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O(Landroid/view/Menu;)Z
    .locals 5

    iget v0, p0, Li0/I;->w:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/p;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Li0/I;->M0(Li0/p;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1}, Li0/p;->h1(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public O0(I)Z
    .locals 1

    iget v0, p0, Li0/I;->w:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public P()V
    .locals 1

    invoke-virtual {p0}, Li0/I;->v1()V

    iget-object v0, p0, Li0/I;->A:Li0/p;

    invoke-virtual {p0, v0}, Li0/I;->L(Li0/p;)V

    return-void
.end method

.method public P0()Z
    .locals 1

    iget-boolean v0, p0, Li0/I;->K:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Li0/I;->L:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public Q()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/I;->K:Z

    iput-boolean v0, p0, Li0/I;->L:Z

    iget-object v1, p0, Li0/I;->R:Li0/L;

    invoke-virtual {v1, v0}, Li0/L;->n(Z)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Li0/I;->S(I)V

    return-void
.end method

.method public final synthetic Q0()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Li0/I;->m1()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public R()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/I;->K:Z

    iput-boolean v0, p0, Li0/I;->L:Z

    iget-object v1, p0, Li0/I;->R:Li0/L;

    invoke-virtual {v1, v0}, Li0/L;->n(Z)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Li0/I;->S(I)V

    return-void
.end method

.method public final synthetic R0(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Li0/I;->K0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Li0/I;->z(Landroid/content/res/Configuration;Z)V

    :cond_0
    return-void
.end method

.method public final S(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Li0/I;->b:Z

    iget-object v2, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v2, p1}, Li0/P;->d(I)V

    invoke-virtual {p0, p1, v1}, Li0/I;->W0(IZ)V

    invoke-virtual {p0}, Li0/I;->t()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/Z;

    invoke-virtual {v2}, Li0/Z;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Li0/I;->b:Z

    invoke-virtual {p0, v0}, Li0/I;->a0(Z)Z

    return-void

    :goto_1
    iput-boolean v1, p0, Li0/I;->b:Z

    throw p1
.end method

.method public final synthetic S0(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p0}, Li0/I;->K0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Li0/I;->F(Z)V

    :cond_0
    return-void
.end method

.method public T()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/I;->L:Z

    iget-object v1, p0, Li0/I;->R:Li0/L;

    invoke-virtual {v1, v0}, Li0/L;->n(Z)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Li0/I;->S(I)V

    return-void
.end method

.method public final synthetic T0(LG/f;)V
    .locals 1

    invoke-virtual {p0}, Li0/I;->K0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LG/f;->a()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Li0/I;->G(ZZ)V

    :cond_0
    return-void
.end method

.method public U()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Li0/I;->S(I)V

    return-void
.end method

.method public final synthetic U0(LG/r;)V
    .locals 1

    invoke-virtual {p0}, Li0/I;->K0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LG/r;->a()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Li0/I;->N(ZZ)V

    :cond_0
    return-void
.end method

.method public final V()V
    .locals 1

    iget-boolean v0, p0, Li0/I;->N:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/I;->N:Z

    invoke-virtual {p0}, Li0/I;->t1()V

    :cond_0
    return-void
.end method

.method public V0(Li0/p;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Li0/I;->F:Lf/c;

    if-eqz v0, :cond_1

    new-instance v0, Li0/I$k;

    iget-object p1, p1, Li0/p;->h:Ljava/lang/String;

    invoke-direct {v0, p1, p3}, Li0/I$k;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Li0/I;->I:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    const-string p1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, Li0/I;->F:Lf/c;

    invoke-virtual {p1, p2}, Lf/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Li0/I;->x:Li0/A;

    invoke-virtual {v0, p1, p2, p3, p4}, Li0/A;->A(Li0/p;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public W(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v1, p1, p2, p3, p4}, Li0/P;->e(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Li0/I;->e:Ljava/util/ArrayList;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Li0/I;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/p;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Li0/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_1
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Li0/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p3}, Li0/a;->r(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Back Stack Index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Li0/I;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Li0/I;->a:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Li0/I;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    if-ge p4, v0, :cond_2

    iget-object v1, p0, Li0/I;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/I$l;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Li0/I;->x:Li0/A;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Li0/I;->y:Li0/w;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Li0/I;->z:Li0/p;

    if-eqz p2, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Li0/I;->z:Li0/p;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Li0/I;->w:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Li0/I;->K:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Li0/I;->L:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Li0/I;->M:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Li0/I;->J:Z

    if-eqz p2, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Li0/I;->J:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    return-void

    :goto_3
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public W0(IZ)V
    .locals 1

    iget-object v0, p0, Li0/I;->x:Li0/A;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Li0/I;->w:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Li0/I;->w:I

    iget-object p1, p0, Li0/I;->c:Li0/P;

    invoke-virtual {p1}, Li0/P;->t()V

    invoke-virtual {p0}, Li0/I;->t1()V

    iget-boolean p1, p0, Li0/I;->J:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Li0/I;->x:Li0/A;

    if-eqz p1, :cond_3

    iget p2, p0, Li0/I;->w:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Li0/A;->B()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Li0/I;->J:Z

    :cond_3
    return-void
.end method

.method public final X()V
    .locals 2

    invoke-virtual {p0}, Li0/I;->t()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/Z;

    invoke-virtual {v1}, Li0/Z;->q()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public X0()V
    .locals 2

    iget-object v0, p0, Li0/I;->x:Li0/A;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/I;->K:Z

    iput-boolean v0, p0, Li0/I;->L:Z

    iget-object v1, p0, Li0/I;->R:Li0/L;

    invoke-virtual {v1, v0}, Li0/L;->n(Z)V

    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/p;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Li0/p;->i0()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Y(Li0/I$l;Z)V
    .locals 2

    if-nez p2, :cond_2

    iget-object v0, p0, Li0/I;->x:Li0/A;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Li0/I;->M:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Li0/I;->q()V

    :cond_2
    iget-object v0, p0, Li0/I;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Li0/I;->x:Li0/A;

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p2, p0, Li0/I;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Li0/I;->n1()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Y0(Li0/x;)V
    .locals 5

    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/O;

    invoke-virtual {v1}, Li0/O;->k()Li0/p;

    move-result-object v2

    iget v3, v2, Li0/p;->B:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Li0/p;->L:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    iput-object p1, v2, Li0/p;->K:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Li0/O;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final Z(Z)V
    .locals 2

    iget-boolean v0, p0, Li0/I;->b:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Li0/I;->x:Li0/A;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Li0/I;->M:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Li0/I;->x:Li0/A;

    invoke-virtual {v1}, Li0/A;->v()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_2

    invoke-virtual {p0}, Li0/I;->q()V

    :cond_2
    iget-object p1, p0, Li0/I;->O:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Li0/I;->O:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Li0/I;->P:Ljava/util/ArrayList;

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Z0(Li0/O;)V
    .locals 2

    invoke-virtual {p1}, Li0/O;->k()Li0/p;

    move-result-object v0

    iget-boolean v1, v0, Li0/p;->M:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Li0/I;->b:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/I;->N:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Li0/p;->M:Z

    invoke-virtual {p1}, Li0/O;->m()V

    :cond_1
    return-void
.end method

.method public a0(Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Li0/I;->Z(Z)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Li0/I;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Li0/I;->P:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Li0/I;->o0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/I;->b:Z

    :try_start_0
    iget-object v0, p0, Li0/I;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Li0/I;->P:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Li0/I;->i1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Li0/I;->r()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Li0/I;->r()V

    throw p1

    :cond_0
    invoke-virtual {p0}, Li0/I;->v1()V

    invoke-virtual {p0}, Li0/I;->V()V

    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->b()V

    return p1
.end method

.method public a1(IIZ)V
    .locals 2

    if-ltz p1, :cond_0

    new-instance v0, Li0/I$m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Li0/I$m;-><init>(Li0/I;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, p3}, Li0/I;->Y(Li0/I$l;Z)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad id: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b0(Li0/I$l;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Li0/I;->x:Li0/A;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li0/I;->M:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Li0/I;->Z(Z)V

    iget-object p2, p0, Li0/I;->O:Ljava/util/ArrayList;

    iget-object v0, p0, Li0/I;->P:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Li0/I$l;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/I;->b:Z

    :try_start_0
    iget-object p1, p0, Li0/I;->O:Ljava/util/ArrayList;

    iget-object p2, p0, Li0/I;->P:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Li0/I;->i1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Li0/I;->r()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Li0/I;->r()V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Li0/I;->v1()V

    invoke-virtual {p0}, Li0/I;->V()V

    iget-object p1, p0, Li0/I;->c:Li0/P;

    invoke-virtual {p1}, Li0/P;->b()V

    return-void
.end method

.method public b1()Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Li0/I;->d1(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public c1(II)Z
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Li0/I;->d1(Ljava/lang/String;II)Z

    move-result p1

    return p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final d0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 8

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li0/a;

    iget-boolean v0, v0, Li0/Q;->r:Z

    iget-object v1, p0, Li0/I;->Q:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Li0/I;->Q:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v1, p0, Li0/I;->Q:Ljava/util/ArrayList;

    iget-object v2, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v2}, Li0/P;->o()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Li0/I;->z0()Li0/p;

    move-result-object v1

    const/4 v2, 0x0

    move v3, p3

    move v4, v2

    :goto_1
    const/4 v5, 0x1

    if-ge v3, p4, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li0/a;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Li0/I;->Q:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v1}, Li0/a;->v(Ljava/util/ArrayList;Li0/p;)Li0/p;

    move-result-object v1

    goto :goto_2

    :cond_1
    iget-object v7, p0, Li0/I;->Q:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v1}, Li0/a;->y(Ljava/util/ArrayList;Li0/p;)Li0/p;

    move-result-object v1

    :goto_2
    if-nez v4, :cond_3

    iget-boolean v4, v6, Li0/Q;->i:Z

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    move v4, v2

    goto :goto_4

    :cond_3
    :goto_3
    move v4, v5

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Li0/I;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v0, :cond_7

    iget v0, p0, Li0/I;->w:I

    if-lt v0, v5, :cond_7

    move v0, p3

    :goto_5
    if-ge v0, p4, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/a;

    iget-object v1, v1, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/Q$a;

    iget-object v2, v2, Li0/Q$a;->b:Li0/p;

    if-eqz v2, :cond_5

    iget-object v3, v2, Li0/p;->w:Li0/I;

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Li0/I;->v(Li0/p;)Li0/O;

    move-result-object v2

    iget-object v3, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v3, v2}, Li0/P;->r(Li0/O;)V

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    invoke-static {p1, p2, p3, p4}, Li0/I;->c0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v0, p4, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v4, :cond_c

    iget-object v1, p0, Li0/I;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/a;

    invoke-virtual {p0, v3}, Li0/I;->n0(Li0/a;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_8
    iget-object v2, p0, Li0/I;->h:Li0/a;

    if-nez v2, :cond_c

    iget-object v2, p0, Li0/I;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_8

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li0/p;

    throw v6

    :cond_a
    iget-object v2, p0, Li0/I;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_9

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li0/p;

    throw v6

    :cond_c
    move v1, p3

    :goto_a
    if-ge v1, p4, :cond_11

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/a;

    if-eqz v0, :cond_e

    iget-object v3, v2, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_b
    if-ltz v3, :cond_10

    iget-object v6, v2, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li0/Q$a;

    iget-object v6, v6, Li0/Q$a;->b:Li0/p;

    if-eqz v6, :cond_d

    invoke-virtual {p0, v6}, Li0/I;->v(Li0/p;)Li0/O;

    move-result-object v6

    invoke-virtual {v6}, Li0/O;->m()V

    :cond_d
    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    :cond_e
    iget-object v2, v2, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/Q$a;

    iget-object v3, v3, Li0/Q$a;->b:Li0/p;

    if-eqz v3, :cond_f

    invoke-virtual {p0, v3}, Li0/I;->v(Li0/p;)Li0/O;

    move-result-object v3

    invoke-virtual {v3}, Li0/O;->m()V

    goto :goto_c

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    iget v1, p0, Li0/I;->w:I

    invoke-virtual {p0, v1, v5}, Li0/I;->W0(IZ)V

    invoke-virtual {p0, p1, p3, p4}, Li0/I;->u(Ljava/util/ArrayList;II)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/Z;

    invoke-virtual {v2, v0}, Li0/Z;->B(Z)V

    invoke-virtual {v2}, Li0/Z;->x()V

    invoke-virtual {v2}, Li0/Z;->n()V

    goto :goto_d

    :cond_12
    :goto_e
    if-ge p3, p4, :cond_14

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li0/a;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, v0, Li0/a;->v:I

    if-ltz v1, :cond_13

    const/4 v1, -0x1

    iput v1, v0, Li0/a;->v:I

    :cond_13
    invoke-virtual {v0}, Li0/a;->x()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_e

    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {p0}, Li0/I;->j1()V

    :cond_15
    return-void
.end method

.method public final d1(Ljava/lang/String;II)Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li0/I;->a0(Z)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li0/I;->Z(Z)V

    iget-object v1, p0, Li0/I;->A:Li0/p;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {v1}, Li0/p;->s()Li0/I;

    move-result-object v1

    invoke-virtual {v1}, Li0/I;->b1()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v3, p0, Li0/I;->O:Ljava/util/ArrayList;

    iget-object v4, p0, Li0/I;->P:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Li0/I;->e1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Li0/I;->b:Z

    :try_start_0
    iget-object p2, p0, Li0/I;->O:Ljava/util/ArrayList;

    iget-object p3, p0, Li0/I;->P:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p3}, Li0/I;->i1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Li0/I;->r()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Li0/I;->r()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Li0/I;->v1()V

    invoke-virtual {p0}, Li0/I;->V()V

    iget-object p2, p0, Li0/I;->c:Li0/P;

    invoke-virtual {p2}, Li0/P;->b()V

    return p1
.end method

.method public e0()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li0/I;->a0(Z)Z

    move-result v0

    invoke-virtual {p0}, Li0/I;->m0()V

    return v0
.end method

.method public e1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p5, v0

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    move p5, v0

    goto :goto_0

    :cond_0
    move p5, v1

    :goto_0
    invoke-virtual {p0, p3, p4, p5}, Li0/I;->g0(Ljava/lang/String;IZ)I

    move-result p3

    if-gez p3, :cond_1

    return v1

    :cond_1
    iget-object p4, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v0

    :goto_1
    if-lt p4, p3, :cond_2

    iget-object p5, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Li0/a;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public f0(Ljava/lang/String;)Li0/p;
    .locals 1

    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0, p1}, Li0/P;->f(Ljava/lang/String;)Li0/p;

    move-result-object p1

    return-object p1
.end method

.method public f1(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 9

    iget-object v0, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li0/a;

    iput-object v0, p0, Li0/I;->h:Li0/a;

    iget-object v0, v0, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/Q$a;

    iget-object v1, v1, Li0/Q$a;->b:Li0/p;

    if-eqz v1, :cond_0

    iput-boolean v2, v1, Li0/p;->p:Z

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Li0/I;->e1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public final g0(Ljava/lang/String;IZ)I
    .locals 4

    iget-object v0, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_2

    if-gez p2, :cond_2

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_2
    iget-object v0, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v2, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/a;

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Li0/a;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    if-ltz p2, :cond_4

    iget v2, v2, Li0/a;->v:I

    if-ne p2, v2, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-gez v0, :cond_6

    return v0

    :cond_6
    if-eqz p3, :cond_9

    :goto_2
    if-lez v0, :cond_b

    iget-object p3, p0, Li0/I;->d:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Li0/a;

    if-eqz p1, :cond_7

    invoke-virtual {p3}, Li0/a;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    if-ltz p2, :cond_b

    iget p3, p3, Li0/a;->v:I

    if-ne p2, p3, :cond_b

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_9
    iget-object p1, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    :cond_b
    return v0
.end method

.method public g1()V
    .locals 2

    new-instance v0, Li0/I$n;

    invoke-direct {v0, p0}, Li0/I$n;-><init>(Li0/I;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Li0/I;->Y(Li0/I$l;Z)V

    return-void
.end method

.method public h(Li0/a;)V
    .locals 1

    iget-object v0, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h0(I)Li0/p;
    .locals 1

    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0, p1}, Li0/P;->g(I)Li0/p;

    move-result-object p1

    return-object p1
.end method

.method public h1(Li0/p;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Li0/p;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Li0/p;->c0()Z

    move-result v0

    iget-boolean v1, p1, Li0/p;->E:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0, p1}, Li0/P;->u(Li0/p;)V

    invoke-virtual {p0, p1}, Li0/I;->J0(Li0/p;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Li0/I;->J:Z

    :cond_2
    iput-boolean v1, p1, Li0/p;->o:Z

    invoke-virtual {p0, p1}, Li0/I;->r1(Li0/p;)V

    :cond_3
    return-void
.end method

.method public i(Li0/p;)Li0/O;
    .locals 3

    iget-object v0, p1, Li0/p;->U:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lj0/c;->f(Li0/p;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Li0/I;->v(Li0/p;)Li0/O;

    move-result-object v0

    iput-object p0, p1, Li0/p;->w:Li0/I;

    iget-object v1, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v1, v0}, Li0/P;->r(Li0/O;)V

    iget-boolean v1, p1, Li0/p;->E:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v1, p1}, Li0/P;->a(Li0/p;)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Li0/p;->o:Z

    iget-object v2, p1, Li0/p;->L:Landroid/view/View;

    if-nez v2, :cond_2

    iput-boolean v1, p1, Li0/p;->R:Z

    :cond_2
    invoke-virtual {p0, p1}, Li0/I;->J0(Li0/p;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/I;->J:Z

    :cond_3
    return-object v0
.end method

.method public i0(Ljava/lang/String;)Li0/p;
    .locals 1

    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0, p1}, Li0/P;->h(Ljava/lang/String;)Li0/p;

    move-result-object p1

    return-object p1
.end method

.method public final i1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/a;

    iget-boolean v3, v3, Li0/Q;->r:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Li0/I;->d0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/a;

    iget-boolean v3, v3, Li0/Q;->r:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Li0/I;->d0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Li0/I;->d0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Li0/M;)V
    .locals 1

    iget-object v0, p0, Li0/I;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j0(Ljava/lang/String;)Li0/p;
    .locals 1

    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0, p1}, Li0/P;->i(Ljava/lang/String;)Li0/p;

    move-result-object p1

    return-object p1
.end method

.method public final j1()V
    .locals 2

    iget-object v0, p0, Li0/I;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li0/I;->o:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Li0/I;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public k1(Landroid/os/Parcelable;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "result_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Li0/I;->x:Li0/A;

    invoke-virtual {v3}, Li0/A;->o()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Li0/I;->m:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "fragment_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Li0/I;->x:Li0/A;

    invoke-virtual {v4}, Li0/A;->o()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v1, v0}, Li0/P;->x(Ljava/util/HashMap;)V

    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Li0/K;

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v1}, Li0/P;->v()V

    iget-object v1, p1, Li0/K;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "): "

    const/4 v4, 0x2

    const-string v5, "FragmentManager"

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, p0, Li0/I;->c:Li0/P;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Li0/P;->B(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Li0/N;

    iget-object v7, p0, Li0/I;->R:Li0/L;

    iget-object v6, v6, Li0/N;->f:Ljava/lang/String;

    invoke-virtual {v7, v6}, Li0/L;->g(Ljava/lang/String;)Li0/p;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {v4}, Li0/I;->I0(I)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreSaveState: re-attaching retained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v7, Li0/O;

    iget-object v8, p0, Li0/I;->p:Li0/C;

    iget-object v9, p0, Li0/I;->c:Li0/P;

    invoke-direct {v7, v8, v9, v6, v2}, Li0/O;-><init>(Li0/C;Li0/P;Li0/p;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_8
    new-instance v7, Li0/O;

    iget-object v9, p0, Li0/I;->p:Li0/C;

    iget-object v10, p0, Li0/I;->c:Li0/P;

    iget-object v6, p0, Li0/I;->x:Li0/A;

    invoke-virtual {v6}, Li0/A;->o()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {p0}, Li0/I;->t0()Li0/z;

    move-result-object v12

    move-object v8, v7

    move-object v13, v2

    invoke-direct/range {v8 .. v13}, Li0/O;-><init>(Li0/C;Li0/P;Ljava/lang/ClassLoader;Li0/z;Landroid/os/Bundle;)V

    :goto_3
    invoke-virtual {v7}, Li0/O;->k()Li0/p;

    move-result-object v6

    iput-object v2, v6, Li0/p;->d:Landroid/os/Bundle;

    iput-object p0, v6, Li0/p;->w:Li0/I;

    invoke-static {v4}, Li0/I;->I0(I)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreSaveState: active ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v2, p0, Li0/I;->x:Li0/A;

    invoke-virtual {v2}, Li0/A;->o()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v7, v2}, Li0/O;->o(Ljava/lang/ClassLoader;)V

    iget-object v2, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v2, v7}, Li0/P;->r(Li0/O;)V

    iget v2, p0, Li0/I;->w:I

    invoke-virtual {v7, v2}, Li0/O;->s(I)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Li0/I;->R:Li0/L;

    invoke-virtual {v0}, Li0/L;->j()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/p;

    iget-object v2, p0, Li0/I;->c:Li0/P;

    iget-object v6, v1, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {v2, v6}, Li0/P;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v4}, Li0/I;->I0(I)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding retained Fragment "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " that was not found in the set of active Fragments "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Li0/K;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v2, p0, Li0/I;->R:Li0/L;

    invoke-virtual {v2, v1}, Li0/L;->m(Li0/p;)V

    iput-object p0, v1, Li0/p;->w:Li0/I;

    new-instance v2, Li0/O;

    iget-object v6, p0, Li0/I;->p:Li0/C;

    iget-object v7, p0, Li0/I;->c:Li0/P;

    invoke-direct {v2, v6, v7, v1}, Li0/O;-><init>(Li0/C;Li0/P;Li0/p;)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Li0/O;->s(I)V

    invoke-virtual {v2}, Li0/O;->m()V

    iput-boolean v6, v1, Li0/p;->o:Z

    invoke-virtual {v2}, Li0/O;->m()V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Li0/I;->c:Li0/P;

    iget-object v1, p1, Li0/K;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Li0/P;->w(Ljava/util/List;)V

    iget-object v0, p1, Li0/K;->g:[Li0/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Li0/K;->g:[Li0/b;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Li0/I;->d:Ljava/util/ArrayList;

    move v0, v1

    :goto_5
    iget-object v2, p1, Li0/K;->g:[Li0/b;

    array-length v6, v2

    if-ge v0, v6, :cond_10

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Li0/b;->c(Li0/I;)Li0/a;

    move-result-object v2

    invoke-static {v4}, Li0/I;->I0(I)Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: back stack #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Li0/a;->v:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Li0/W;

    invoke-direct {v6, v5}, Li0/W;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v6, "  "

    invoke-virtual {v2, v6, v7, v1}, Li0/a;->s(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    :cond_e
    iget-object v6, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li0/I;->d:Ljava/util/ArrayList;

    :cond_10
    iget-object v0, p0, Li0/I;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p1, Li0/K;->h:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p1, Li0/K;->i:Ljava/lang/String;

    if-eqz v0, :cond_11

    invoke-virtual {p0, v0}, Li0/I;->f0(Ljava/lang/String;)Li0/p;

    move-result-object v0

    iput-object v0, p0, Li0/I;->A:Li0/p;

    invoke-virtual {p0, v0}, Li0/I;->L(Li0/p;)V

    :cond_11
    iget-object v0, p1, Li0/K;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    iget-object v2, p0, Li0/I;->l:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Li0/K;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li0/c;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object p1, p1, Li0/K;->l:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Li0/I;->I:Ljava/util/ArrayDeque;

    return-void
.end method

.method public l(Li0/A;Li0/w;Li0/p;)V
    .locals 3

    iget-object v0, p0, Li0/I;->x:Li0/A;

    if-nez v0, :cond_f

    iput-object p1, p0, Li0/I;->x:Li0/A;

    iput-object p2, p0, Li0/I;->y:Li0/w;

    iput-object p3, p0, Li0/I;->z:Li0/p;

    if-eqz p3, :cond_0

    new-instance p2, Li0/I$g;

    invoke-direct {p2, p0, p3}, Li0/I$g;-><init>(Li0/I;Li0/p;)V

    invoke-virtual {p0, p2}, Li0/I;->j(Li0/M;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Li0/M;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Li0/M;

    invoke-virtual {p0, p2}, Li0/I;->j(Li0/M;)V

    :cond_1
    :goto_0
    iget-object p2, p0, Li0/I;->z:Li0/p;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Li0/I;->v1()V

    :cond_2
    instance-of p2, p1, Ld/s;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Ld/s;

    invoke-interface {p2}, Ld/s;->k()Ld/q;

    move-result-object v0

    iput-object v0, p0, Li0/I;->g:Ld/q;

    if-eqz p3, :cond_3

    move-object p2, p3

    :cond_3
    iget-object v1, p0, Li0/I;->j:Ld/p;

    invoke-virtual {v0, p2, v1}, Ld/q;->h(Landroidx/lifecycle/k;Ld/p;)V

    :cond_4
    if-eqz p3, :cond_5

    iget-object p1, p3, Li0/p;->w:Li0/I;

    invoke-virtual {p1, p3}, Li0/I;->q0(Li0/p;)Li0/L;

    move-result-object p1

    iput-object p1, p0, Li0/I;->R:Li0/L;

    goto :goto_1

    :cond_5
    instance-of p2, p1, Landroidx/lifecycle/I;

    if-eqz p2, :cond_6

    check-cast p1, Landroidx/lifecycle/I;

    invoke-interface {p1}, Landroidx/lifecycle/I;->t()Landroidx/lifecycle/H;

    move-result-object p1

    invoke-static {p1}, Li0/L;->i(Landroidx/lifecycle/H;)Li0/L;

    move-result-object p1

    iput-object p1, p0, Li0/I;->R:Li0/L;

    goto :goto_1

    :cond_6
    new-instance p1, Li0/L;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Li0/L;-><init>(Z)V

    iput-object p1, p0, Li0/I;->R:Li0/L;

    :goto_1
    iget-object p1, p0, Li0/I;->R:Li0/L;

    invoke-virtual {p0}, Li0/I;->P0()Z

    move-result p2

    invoke-virtual {p1, p2}, Li0/L;->n(Z)V

    iget-object p1, p0, Li0/I;->c:Li0/P;

    iget-object p2, p0, Li0/I;->R:Li0/L;

    invoke-virtual {p1, p2}, Li0/P;->A(Li0/L;)V

    iget-object p1, p0, Li0/I;->x:Li0/A;

    instance-of p2, p1, Lx0/f;

    if-eqz p2, :cond_7

    if-nez p3, :cond_7

    check-cast p1, Lx0/f;

    invoke-interface {p1}, Lx0/f;->l()Lx0/d;

    move-result-object p1

    new-instance p2, Li0/H;

    invoke-direct {p2, p0}, Li0/H;-><init>(Li0/I;)V

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0, p2}, Lx0/d;->h(Ljava/lang/String;Lx0/d$c;)V

    invoke-virtual {p1, v0}, Lx0/d;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Li0/I;->k1(Landroid/os/Parcelable;)V

    :cond_7
    iget-object p1, p0, Li0/I;->x:Li0/A;

    instance-of p2, p1, Lf/e;

    if-eqz p2, :cond_9

    check-cast p1, Lf/e;

    invoke-interface {p1}, Lf/e;->p()Lf/d;

    move-result-object p1

    if-eqz p3, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p3, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_8
    const-string p2, ""

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FragmentManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "StartActivityForResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lg/c;

    invoke-direct {v1}, Lg/c;-><init>()V

    new-instance v2, Li0/I$h;

    invoke-direct {v2, p0}, Li0/I$h;-><init>(Li0/I;)V

    invoke-virtual {p1, v0, v1, v2}, Lf/d;->i(Ljava/lang/String;Lg/a;Lf/b;)Lf/c;

    move-result-object v0

    iput-object v0, p0, Li0/I;->F:Lf/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "StartIntentSenderForResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Li0/I$j;

    invoke-direct {v1}, Li0/I$j;-><init>()V

    new-instance v2, Li0/I$i;

    invoke-direct {v2, p0}, Li0/I$i;-><init>(Li0/I;)V

    invoke-virtual {p1, v0, v1, v2}, Lf/d;->i(Ljava/lang/String;Lg/a;Lf/b;)Lf/c;

    move-result-object v0

    iput-object v0, p0, Li0/I;->G:Lf/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "RequestPermissions"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lg/b;

    invoke-direct {v0}, Lg/b;-><init>()V

    new-instance v1, Li0/I$a;

    invoke-direct {v1, p0}, Li0/I$a;-><init>(Li0/I;)V

    invoke-virtual {p1, p2, v0, v1}, Lf/d;->i(Ljava/lang/String;Lg/a;Lf/b;)Lf/c;

    move-result-object p1

    iput-object p1, p0, Li0/I;->H:Lf/c;

    :cond_9
    iget-object p1, p0, Li0/I;->x:Li0/A;

    instance-of p2, p1, LH/c;

    if-eqz p2, :cond_a

    check-cast p1, LH/c;

    iget-object p2, p0, Li0/I;->r:LR/a;

    invoke-interface {p1, p2}, LH/c;->h(LR/a;)V

    :cond_a
    iget-object p1, p0, Li0/I;->x:Li0/A;

    instance-of p2, p1, LH/d;

    if-eqz p2, :cond_b

    check-cast p1, LH/d;

    iget-object p2, p0, Li0/I;->s:LR/a;

    invoke-interface {p1, p2}, LH/d;->d(LR/a;)V

    :cond_b
    iget-object p1, p0, Li0/I;->x:Li0/A;

    instance-of p2, p1, LG/n;

    if-eqz p2, :cond_c

    check-cast p1, LG/n;

    iget-object p2, p0, Li0/I;->t:LR/a;

    invoke-interface {p1, p2}, LG/n;->c(LR/a;)V

    :cond_c
    iget-object p1, p0, Li0/I;->x:Li0/A;

    instance-of p2, p1, LG/o;

    if-eqz p2, :cond_d

    check-cast p1, LG/o;

    iget-object p2, p0, Li0/I;->u:LR/a;

    invoke-interface {p1, p2}, LG/o;->g(LR/a;)V

    :cond_d
    iget-object p1, p0, Li0/I;->x:Li0/A;

    instance-of p2, p1, LS/l;

    if-eqz p2, :cond_e

    if-nez p3, :cond_e

    check-cast p1, LS/l;

    iget-object p2, p0, Li0/I;->v:LS/o;

    invoke-interface {p1, p2}, LS/l;->u(LS/o;)V

    :cond_e
    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Li0/p;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Li0/p;->E:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Li0/p;->E:Z

    iget-boolean v1, p1, Li0/p;->n:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v1, p1}, Li0/P;->a(Li0/p;)V

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Li0/I;->J0(Li0/p;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/I;->J:Z

    :cond_2
    return-void
.end method

.method public final m0()V
    .locals 2

    invoke-virtual {p0}, Li0/I;->t()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/Z;

    invoke-virtual {v1}, Li0/Z;->r()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m1()Landroid/os/Bundle;
    .locals 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Li0/I;->m0()V

    invoke-virtual {p0}, Li0/I;->X()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Li0/I;->a0(Z)Z

    iput-boolean v1, p0, Li0/I;->K:Z

    iget-object v2, p0, Li0/I;->R:Li0/L;

    invoke-virtual {v2, v1}, Li0/L;->n(Z)V

    iget-object v1, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v1}, Li0/P;->y()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v2}, Li0/P;->m()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    const-string v4, "FragmentManager"

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    invoke-static {v5}, Li0/I;->I0(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v3}, Li0/P;->z()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    new-array v7, v6, [Li0/b;

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_3

    new-instance v9, Li0/b;

    iget-object v10, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li0/a;

    invoke-direct {v9, v10}, Li0/b;-><init>(Li0/a;)V

    aput-object v9, v7, v8

    invoke-static {v5}, Li0/I;->I0(I)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveAllState: adding back stack #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :cond_3
    new-instance v4, Li0/K;

    invoke-direct {v4}, Li0/K;-><init>()V

    iput-object v1, v4, Li0/K;->e:Ljava/util/ArrayList;

    iput-object v3, v4, Li0/K;->f:Ljava/util/ArrayList;

    iput-object v7, v4, Li0/K;->g:[Li0/b;

    iget-object v1, p0, Li0/I;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v4, Li0/K;->h:I

    iget-object v1, p0, Li0/I;->A:Li0/p;

    if-eqz v1, :cond_4

    iget-object v1, v1, Li0/p;->h:Ljava/lang/String;

    iput-object v1, v4, Li0/K;->i:Ljava/lang/String;

    :cond_4
    iget-object v1, v4, Li0/K;->j:Ljava/util/ArrayList;

    iget-object v3, p0, Li0/I;->l:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v4, Li0/K;->k:Ljava/util/ArrayList;

    iget-object v3, p0, Li0/I;->l:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Li0/I;->I:Ljava/util/ArrayDeque;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v4, Li0/K;->l:Ljava/util/ArrayList;

    const-string v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Li0/I;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Li0/I;->m:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fragment_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_6
    :goto_3
    return-object v0
.end method

.method public n()Li0/Q;
    .locals 1

    new-instance v0, Li0/a;

    invoke-direct {v0, p0}, Li0/a;-><init>(Li0/I;)V

    return-object v0
.end method

.method public n0(Li0/a;)Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p1, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/Q$a;

    iget-object v2, v2, Li0/Q$a;->b:Li0/p;

    if-eqz v2, :cond_0

    iget-boolean v3, p1, Li0/Q;->i:Z

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public n1()V
    .locals 3

    iget-object v0, p0, Li0/I;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Li0/I;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Li0/I;->x:Li0/A;

    invoke-virtual {v1}, Li0/A;->v()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Li0/I;->T:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Li0/I;->x:Li0/A;

    invoke-virtual {v1}, Li0/A;->v()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Li0/I;->T:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Li0/I;->v1()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Li0/I;->h:Li0/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Li0/a;->u:Z

    invoke-virtual {v0}, Li0/a;->f()I

    invoke-virtual {p0}, Li0/I;->e0()Z

    iget-object v0, p0, Li0/I;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final o0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5

    iget-object v0, p0, Li0/I;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Li0/I;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Li0/I;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Li0/I;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li0/I$l;

    invoke-interface {v4, p1, p2}, Li0/I$l;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object p1, p0, Li0/I;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Li0/I;->x:Li0/A;

    invoke-virtual {p1}, Li0/A;->v()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Li0/I;->T:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v0

    return v3

    :goto_1
    iget-object p2, p0, Li0/I;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Li0/I;->x:Li0/A;

    invoke-virtual {p2}, Li0/A;->v()Landroid/os/Handler;

    move-result-object p2

    iget-object v1, p0, Li0/I;->T:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw p1

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public o1(Li0/p;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Li0/I;->s0(Li0/p;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Li0/x;

    if-eqz v0, :cond_0

    check-cast p1, Li0/x;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Li0/x;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 4

    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li0/p;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Li0/I;->J0(Li0/p;)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public p0()I
    .locals 2

    iget-object v0, p0, Li0/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Li0/I;->h:Li0/a;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public p1(Li0/p;Landroidx/lifecycle/g$b;)V
    .locals 2

    iget-object v0, p1, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Li0/I;->f0(Ljava/lang/String;)Li0/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Li0/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Li0/p;->x:Li0/A;

    if-eqz v0, :cond_0

    iget-object v0, p1, Li0/p;->w:Li0/I;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Li0/p;->V:Landroidx/lifecycle/g$b;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final q()V
    .locals 2

    invoke-virtual {p0}, Li0/I;->P0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q0(Li0/p;)Li0/L;
    .locals 1

    iget-object v0, p0, Li0/I;->R:Li0/L;

    invoke-virtual {v0, p1}, Li0/L;->h(Li0/p;)Li0/L;

    move-result-object p1

    return-object p1
.end method

.method public q1(Li0/p;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Li0/I;->f0(Ljava/lang/String;)Li0/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Li0/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Li0/p;->x:Li0/A;

    if-eqz v0, :cond_1

    iget-object v0, p1, Li0/p;->w:Li0/I;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Li0/I;->A:Li0/p;

    iput-object p1, p0, Li0/I;->A:Li0/p;

    invoke-virtual {p0, v0}, Li0/I;->L(Li0/p;)V

    iget-object p1, p0, Li0/I;->A:Li0/p;

    invoke-virtual {p0, p1}, Li0/I;->L(Li0/p;)V

    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/I;->b:Z

    iget-object v0, p0, Li0/I;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Li0/I;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public r0()Li0/w;
    .locals 1

    iget-object v0, p0, Li0/I;->y:Li0/w;

    return-object v0
.end method

.method public final r1(Li0/p;)V
    .locals 3

    invoke-virtual {p0, p1}, Li0/I;->s0(Li0/p;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Li0/p;->v()I

    move-result v1

    invoke-virtual {p1}, Li0/p;->y()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Li0/p;->J()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Li0/p;->K()I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_1

    sget v1, Lh0/b;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget v1, Lh0/b;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    sget v1, Lh0/b;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li0/p;

    invoke-virtual {p1}, Li0/p;->I()Z

    move-result p1

    invoke-virtual {v0, p1}, Li0/p;->z1(Z)V

    :cond_1
    return-void
.end method

.method public final s()V
    .locals 5

    iget-object v0, p0, Li0/I;->x:Li0/A;

    instance-of v1, v0, Landroidx/lifecycle/I;

    if-eqz v1, :cond_0

    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->p()Li0/L;

    move-result-object v0

    invoke-virtual {v0}, Li0/L;->l()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Li0/A;->o()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Li0/I;->x:Li0/A;

    invoke-virtual {v0}, Li0/A;->o()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Li0/I;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/c;

    iget-object v1, v1, Li0/c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v3}, Li0/P;->p()Li0/L;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Li0/L;->e(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final s0(Li0/p;)Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p1, Li0/p;->K:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Li0/p;->B:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Li0/I;->y:Li0/w;

    invoke-virtual {v0}, Li0/w;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Li0/I;->y:Li0/w;

    iget p1, p1, Li0/p;->B:I

    invoke-virtual {v0, p1}, Li0/w;->i(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public s1(Li0/p;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Li0/p;->D:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Li0/p;->D:Z

    iget-boolean v0, p1, Li0/p;->R:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Li0/p;->R:Z

    :cond_1
    return-void
.end method

.method public final t()Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v1}, Li0/P;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/O;

    invoke-virtual {v2}, Li0/O;->k()Li0/p;

    move-result-object v2

    iget-object v2, v2, Li0/p;->K:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Li0/I;->A0()Li0/a0;

    move-result-object v3

    invoke-static {v2, v3}, Li0/Z;->v(Landroid/view/ViewGroup;Li0/a0;)Li0/Z;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public t0()Li0/z;
    .locals 1

    iget-object v0, p0, Li0/I;->B:Li0/z;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Li0/I;->z:Li0/p;

    if-eqz v0, :cond_1

    iget-object v0, v0, Li0/p;->w:Li0/I;

    invoke-virtual {v0}, Li0/I;->t0()Li0/z;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Li0/I;->C:Li0/z;

    return-object v0
.end method

.method public final t1()V
    .locals 2

    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/O;

    invoke-virtual {p0, v1}, Li0/I;->Z0(Li0/O;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/I;->z:Li0/p;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/I;->z:Li0/p;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Li0/I;->x:Li0/A;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/I;->x:Li0/A;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/util/ArrayList;II)Ljava/util/Set;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/a;

    iget-object v1, v1, Li0/Q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/Q$a;

    iget-object v2, v2, Li0/Q$a;->b:Li0/p;

    if-eqz v2, :cond_0

    iget-object v2, v2, Li0/p;->K:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-static {v2, p0}, Li0/Z;->u(Landroid/view/ViewGroup;Li0/I;)Li0/Z;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public u0()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final u1(Ljava/lang/RuntimeException;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Li0/W;

    invoke-direct {v0, v1}, Li0/W;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Li0/I;->x:Li0/A;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v6, v5, v2, v4}, Li0/A;->x(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v2, v0}, Li0/I;->W(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    throw p1
.end method

.method public v(Li0/p;)Li0/O;
    .locals 3

    iget-object v0, p0, Li0/I;->c:Li0/P;

    iget-object v1, p1, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Li0/P;->n(Ljava/lang/String;)Li0/O;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Li0/O;

    iget-object v1, p0, Li0/I;->p:Li0/C;

    iget-object v2, p0, Li0/I;->c:Li0/P;

    invoke-direct {v0, v1, v2, p1}, Li0/O;-><init>(Li0/C;Li0/P;Li0/p;)V

    iget-object p1, p0, Li0/I;->x:Li0/A;

    invoke-virtual {p1}, Li0/A;->o()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Li0/O;->o(Ljava/lang/ClassLoader;)V

    iget p1, p0, Li0/I;->w:I

    invoke-virtual {v0, p1}, Li0/O;->s(I)V

    return-object v0
.end method

.method public v0()Li0/A;
    .locals 1

    iget-object v0, p0, Li0/I;->x:Li0/A;

    return-object v0
.end method

.method public final v1()V
    .locals 4

    iget-object v0, p0, Li0/I;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Li0/I;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Li0/I;->j:Ld/p;

    invoke-virtual {v1, v3}, Ld/p;->j(Z)V

    invoke-static {v2}, Li0/I;->I0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FragmentManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " enabling OnBackPressedCallback, caused by non-empty pending actions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Li0/I;->p0()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Li0/I;->z:Li0/p;

    invoke-virtual {p0, v0}, Li0/I;->N0(Li0/p;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnBackPressedCallback for FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " enabled state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Li0/I;->j:Ld/p;

    invoke-virtual {v0, v3}, Ld/p;->j(Z)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public w(Li0/p;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Li0/p;->E:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p1, Li0/p;->E:Z

    iget-boolean v3, p1, Li0/p;->n:Z

    if-eqz v3, :cond_3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0, p1}, Li0/P;->u(Li0/p;)V

    invoke-virtual {p0, p1}, Li0/I;->J0(Li0/p;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Li0/I;->J:Z

    :cond_2
    invoke-virtual {p0, p1}, Li0/I;->r1(Li0/p;)V

    :cond_3
    return-void
.end method

.method public w0()Landroid/view/LayoutInflater$Factory2;
    .locals 1

    iget-object v0, p0, Li0/I;->f:Li0/B;

    return-object v0
.end method

.method public x()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/I;->K:Z

    iput-boolean v0, p0, Li0/I;->L:Z

    iget-object v1, p0, Li0/I;->R:Li0/L;

    invoke-virtual {v1, v0}, Li0/L;->n(Z)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Li0/I;->S(I)V

    return-void
.end method

.method public x0()Li0/C;
    .locals 1

    iget-object v0, p0, Li0/I;->p:Li0/C;

    return-object v0
.end method

.method public y()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/I;->K:Z

    iput-boolean v0, p0, Li0/I;->L:Z

    iget-object v1, p0, Li0/I;->R:Li0/L;

    invoke-virtual {v1, v0}, Li0/L;->n(Z)V

    invoke-virtual {p0, v0}, Li0/I;->S(I)V

    return-void
.end method

.method public y0()Li0/p;
    .locals 1

    iget-object v0, p0, Li0/I;->z:Li0/p;

    return-object v0
.end method

.method public z(Landroid/content/res/Configuration;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Li0/I;->x:Li0/A;

    instance-of v0, v0, LH/c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Li0/I;->u1(Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object v0, p0, Li0/I;->c:Li0/P;

    invoke-virtual {v0}, Li0/P;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/p;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Li0/p;->S0(Landroid/content/res/Configuration;)V

    if-eqz p2, :cond_1

    iget-object v1, v1, Li0/p;->y:Li0/I;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Li0/I;->z(Landroid/content/res/Configuration;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public z0()Li0/p;
    .locals 1

    iget-object v0, p0, Li0/I;->A:Li0/p;

    return-object v0
.end method
