.class public abstract Li0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/k;
.implements Landroidx/lifecycle/I;
.implements Landroidx/lifecycle/f;
.implements Lx0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li0/p$i;,
        Li0/p$h;,
        Li0/p$g;
    }
.end annotation


# static fields
.field public static final f0:Ljava/lang/Object;


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/String;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Landroid/view/ViewGroup;

.field public L:Landroid/view/View;

.field public M:Z

.field public N:Z

.field public O:Li0/p$g;

.field public P:Landroid/os/Handler;

.field public Q:Ljava/lang/Runnable;

.field public R:Z

.field public S:Landroid/view/LayoutInflater;

.field public T:Z

.field public U:Ljava/lang/String;

.field public V:Landroidx/lifecycle/g$b;

.field public W:Landroidx/lifecycle/l;

.field public X:Li0/V;

.field public Y:Landroidx/lifecycle/r;

.field public Z:Landroidx/lifecycle/G$c;

.field public a0:Lx0/e;

.field public b0:I

.field public c:I

.field public final c0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public d:Landroid/os/Bundle;

.field public final d0:Ljava/util/ArrayList;

.field public e:Landroid/util/SparseArray;

.field public final e0:Li0/p$i;

.field public f:Landroid/os/Bundle;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/String;

.field public i:Landroid/os/Bundle;

.field public j:Li0/p;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/Boolean;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:Li0/I;

.field public x:Li0/A;

.field public y:Li0/I;

.field public z:Li0/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li0/p;->f0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Li0/p;->c:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li0/p;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Li0/p;->k:Ljava/lang/String;

    iput-object v0, p0, Li0/p;->m:Ljava/lang/Boolean;

    new-instance v0, Li0/J;

    invoke-direct {v0}, Li0/J;-><init>()V

    iput-object v0, p0, Li0/p;->y:Li0/I;

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/p;->I:Z

    iput-boolean v0, p0, Li0/p;->N:Z

    new-instance v0, Li0/p$a;

    invoke-direct {v0, p0}, Li0/p$a;-><init>(Li0/p;)V

    iput-object v0, p0, Li0/p;->Q:Ljava/lang/Runnable;

    sget-object v0, Landroidx/lifecycle/g$b;->i:Landroidx/lifecycle/g$b;

    iput-object v0, p0, Li0/p;->V:Landroidx/lifecycle/g$b;

    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    iput-object v0, p0, Li0/p;->Y:Landroidx/lifecycle/r;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Li0/p;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li0/p;->d0:Ljava/util/ArrayList;

    new-instance v0, Li0/p$b;

    invoke-direct {v0, p0}, Li0/p$b;-><init>(Li0/p;)V

    iput-object v0, p0, Li0/p;->e0:Li0/p$i;

    invoke-virtual {p0}, Li0/p;->X()V

    return-void
.end method

.method public static Z(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Li0/p;
    .locals 3

    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0, p1}, Li0/z;->d(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li0/p;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, p2}, Li0/p;->w1(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    return-object p0

    :goto_1
    new-instance p2, Li0/p$h;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Li0/p$h;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_2
    new-instance p2, Li0/p$h;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Li0/p$h;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_3
    new-instance p2, Li0/p$h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Li0/p$h;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_4
    new-instance p2, Li0/p$h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Li0/p$h;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public static synthetic e(Li0/p;)V
    .locals 0

    invoke-virtual {p0}, Li0/p;->h0()V

    return-void
.end method


# virtual methods
.method public A()LG/t;
    .locals 2

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1
.end method

.method public A0(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/p;->J:Z

    return-void
.end method

.method public A1(F)V
    .locals 1

    invoke-virtual {p0}, Li0/p;->i()Li0/p$g;

    move-result-object v0

    iput p1, v0, Li0/p$g;->r:F

    return-void
.end method

.method public B()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Li0/p$g;->s:Landroid/view/View;

    return-object v0
.end method

.method public B0(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/p;->J:Z

    iget-object p1, p0, Li0/p;->x:Li0/A;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Li0/A;->n()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/p;->J:Z

    invoke-virtual {p0, p1, p2, p3}, Li0/p;->A0(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public B1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    invoke-virtual {p0}, Li0/p;->i()Li0/p$g;

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    iput-object p1, v0, Li0/p$g;->h:Ljava/util/ArrayList;

    iput-object p2, v0, Li0/p$g;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public final C()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Li0/p;->x:Li0/A;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Li0/A;->y()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public C0(Z)V
    .locals 0

    return-void
.end method

.method public C1(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Li0/p;->x:Li0/A;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li0/p;->H()Li0/I;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Li0/I;->V0(Li0/p;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " not attached to Activity"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object p1, p0, Li0/p;->x:Li0/A;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Li0/A;->z()Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->w0()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    invoke-static {p1, v0}, LS/j;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D0(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public D1()V
    .locals 2

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Li0/p;->i()Li0/p$g;

    move-result-object v0

    iget-boolean v0, v0, Li0/p$g;->t:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li0/p;->x:Li0/A;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Li0/p;->i()Li0/p$g;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Li0/p$g;->t:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Li0/p;->x:Li0/A;

    invoke-virtual {v1}, Li0/A;->v()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Li0/p;->x:Li0/A;

    invoke-virtual {v0}, Li0/A;->v()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Li0/p$c;

    invoke-direct {v1, p0}, Li0/p$c;-><init>(Li0/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li0/p;->f(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final E()I
    .locals 2

    iget-object v0, p0, Li0/p;->V:Landroidx/lifecycle/g$b;

    sget-object v1, Landroidx/lifecycle/g$b;->f:Landroidx/lifecycle/g$b;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Li0/p;->z:Li0/p;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Li0/p;->z:Li0/p;

    invoke-virtual {v1}, Li0/p;->E()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public E0(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public F()I
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Li0/p$g;->g:I

    return v0
.end method

.method public F0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/p;->J:Z

    return-void
.end method

.method public final G()Li0/p;
    .locals 1

    iget-object v0, p0, Li0/p;->z:Li0/p;

    return-object v0
.end method

.method public G0(Z)V
    .locals 0

    return-void
.end method

.method public final H()Li0/I;
    .locals 3

    iget-object v0, p0, Li0/p;->w:Li0/I;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not associated with a fragment manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public H0(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Li0/p$g;->b:Z

    return v0
.end method

.method public I0(Z)V
    .locals 0

    return-void
.end method

.method public J()I
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Li0/p$g;->e:I

    return v0
.end method

.method public J0(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public K()I
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Li0/p$g;->f:I

    return v0
.end method

.method public K0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/p;->J:Z

    return-void
.end method

.method public L()F
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    iget v0, v0, Li0/p$g;->r:F

    return v0
.end method

.method public L0(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public M()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Li0/p$g;->m:Ljava/lang/Object;

    sget-object v1, Li0/p;->f0:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Li0/p;->z()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public M0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/p;->J:Z

    return-void
.end method

.method public final N()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Li0/p;->q1()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public N0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/p;->J:Z

    return-void
.end method

.method public O()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Li0/p$g;->k:Ljava/lang/Object;

    sget-object v1, Li0/p;->f0:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Li0/p;->w()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public O0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public P()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Li0/p$g;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public P0(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/p;->J:Z

    return-void
.end method

.method public Q()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Li0/p$g;->o:Ljava/lang/Object;

    sget-object v1, Li0/p;->f0:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Li0/p;->P()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public Q0(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->X0()V

    const/4 v0, 0x3

    iput v0, p0, Li0/p;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/p;->J:Z

    invoke-virtual {p0, p1}, Li0/p;->j0(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Li0/p;->J:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Li0/p;->t1()V

    iget-object p1, p0, Li0/p;->y:Li0/I;

    invoke-virtual {p1}, Li0/I;->x()V

    return-void

    :cond_0
    new-instance p1, Li0/b0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Li0/b0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public R()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-eqz v0, :cond_1

    iget-object v0, v0, Li0/p$g;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public R0()V
    .locals 3

    iget-object v0, p0, Li0/p;->d0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/p$i;

    invoke-virtual {v1}, Li0/p$i;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li0/p;->d0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Li0/p;->y:Li0/I;

    iget-object v1, p0, Li0/p;->x:Li0/A;

    invoke-virtual {p0}, Li0/p;->g()Li0/w;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Li0/I;->l(Li0/A;Li0/w;Li0/p;)V

    const/4 v0, 0x0

    iput v0, p0, Li0/p;->c:I

    iput-boolean v0, p0, Li0/p;->J:Z

    iget-object v0, p0, Li0/p;->x:Li0/A;

    invoke-virtual {v0}, Li0/A;->o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Li0/p;->m0(Landroid/content/Context;)V

    iget-boolean v0, p0, Li0/p;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Li0/p;->w:Li0/I;

    invoke-virtual {v0, p0}, Li0/I;->H(Li0/p;)V

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->y()V

    return-void

    :cond_1
    new-instance v0, Li0/b0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Li0/b0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public S()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-eqz v0, :cond_1

    iget-object v0, v0, Li0/p$g;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public S0(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Li0/p;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final T(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Li0/p;->N()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public T0(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, Li0/p;->D:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Li0/p;->o0(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0, p1}, Li0/I;->A(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final U(Z)Li0/p;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lj0/c;->h(Li0/p;)V

    :cond_0
    iget-object p1, p0, Li0/p;->j:Li0/p;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Li0/p;->w:Li0/I;

    if-eqz p1, :cond_2

    iget-object v0, p0, Li0/p;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Li0/I;->f0(Ljava/lang/String;)Li0/p;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public U0(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->X0()V

    const/4 v0, 0x1

    iput v0, p0, Li0/p;->c:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Li0/p;->J:Z

    iget-object v1, p0, Li0/p;->W:Landroidx/lifecycle/l;

    new-instance v2, Li0/p$f;

    invoke-direct {v2, p0}, Li0/p$f;-><init>(Li0/p;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/j;)V

    invoke-virtual {p0, p1}, Li0/p;->p0(Landroid/os/Bundle;)V

    iput-boolean v0, p0, Li0/p;->T:Z

    iget-boolean p1, p0, Li0/p;->J:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Li0/p;->W:Landroidx/lifecycle/l;

    sget-object v0, Landroidx/lifecycle/g$a;->ON_CREATE:Landroidx/lifecycle/g$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    return-void

    :cond_0
    new-instance p1, Li0/b0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Li0/b0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public V()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Li0/p;->L:Landroid/view/View;

    return-object v0
.end method

.method public V0(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    iget-boolean v0, p0, Li0/p;->D:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Li0/p;->H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li0/p;->I:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Li0/p;->s0(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0, p1, p2}, Li0/I;->C(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method public W()Landroidx/lifecycle/p;
    .locals 1

    iget-object v0, p0, Li0/p;->Y:Landroidx/lifecycle/r;

    return-object v0
.end method

.method public W0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->X0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/p;->u:Z

    new-instance v0, Li0/V;

    invoke-virtual {p0}, Li0/p;->t()Landroidx/lifecycle/H;

    move-result-object v1

    new-instance v2, Li0/o;

    invoke-direct {v2, p0}, Li0/o;-><init>(Li0/p;)V

    invoke-direct {v0, p0, v1, v2}, Li0/V;-><init>(Li0/p;Landroidx/lifecycle/H;Ljava/lang/Runnable;)V

    iput-object v0, p0, Li0/p;->X:Li0/V;

    invoke-virtual {p0, p1, p2, p3}, Li0/p;->t0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Li0/p;->L:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Li0/p;->X:Li0/V;

    invoke-virtual {p1}, Li0/V;->c()V

    const/4 p1, 0x3

    invoke-static {p1}, Li0/I;->I0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Setting ViewLifecycleOwner on View "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Li0/p;->L:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for Fragment "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Li0/p;->L:Landroid/view/View;

    iget-object p2, p0, Li0/p;->X:Li0/V;

    invoke-static {p1, p2}, Landroidx/lifecycle/J;->a(Landroid/view/View;Landroidx/lifecycle/k;)V

    iget-object p1, p0, Li0/p;->L:Landroid/view/View;

    iget-object p2, p0, Li0/p;->X:Li0/V;

    invoke-static {p1, p2}, Landroidx/lifecycle/K;->a(Landroid/view/View;Landroidx/lifecycle/I;)V

    iget-object p1, p0, Li0/p;->L:Landroid/view/View;

    iget-object p2, p0, Li0/p;->X:Li0/V;

    invoke-static {p1, p2}, Lx0/g;->a(Landroid/view/View;Lx0/f;)V

    iget-object p1, p0, Li0/p;->Y:Landroidx/lifecycle/r;

    iget-object p2, p0, Li0/p;->X:Li0/V;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/r;->j(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Li0/p;->X:Li0/V;

    invoke-virtual {p1}, Li0/V;->d()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Li0/p;->X:Li0/V;

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final X()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/l;

    invoke-direct {v0, p0}, Landroidx/lifecycle/l;-><init>(Landroidx/lifecycle/k;)V

    iput-object v0, p0, Li0/p;->W:Landroidx/lifecycle/l;

    invoke-static {p0}, Lx0/e;->a(Lx0/f;)Lx0/e;

    move-result-object v0

    iput-object v0, p0, Li0/p;->a0:Lx0/e;

    const/4 v0, 0x0

    iput-object v0, p0, Li0/p;->Z:Landroidx/lifecycle/G$c;

    iget-object v0, p0, Li0/p;->d0:Ljava/util/ArrayList;

    iget-object v1, p0, Li0/p;->e0:Li0/p$i;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li0/p;->e0:Li0/p$i;

    invoke-virtual {p0, v0}, Li0/p;->o1(Li0/p$i;)V

    :cond_0
    return-void
.end method

.method public X0()V
    .locals 3

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->D()V

    iget-object v0, p0, Li0/p;->W:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    const/4 v0, 0x0

    iput v0, p0, Li0/p;->c:I

    iput-boolean v0, p0, Li0/p;->J:Z

    iput-boolean v0, p0, Li0/p;->T:Z

    invoke-virtual {p0}, Li0/p;->u0()V

    iget-boolean v0, p0, Li0/p;->J:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Li0/b0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Li0/b0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Y()V
    .locals 3

    invoke-virtual {p0}, Li0/p;->X()V

    iget-object v0, p0, Li0/p;->h:Ljava/lang/String;

    iput-object v0, p0, Li0/p;->U:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li0/p;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/p;->n:Z

    iput-boolean v0, p0, Li0/p;->o:Z

    iput-boolean v0, p0, Li0/p;->r:Z

    iput-boolean v0, p0, Li0/p;->s:Z

    iput-boolean v0, p0, Li0/p;->t:Z

    iput v0, p0, Li0/p;->v:I

    const/4 v1, 0x0

    iput-object v1, p0, Li0/p;->w:Li0/I;

    new-instance v2, Li0/J;

    invoke-direct {v2}, Li0/J;-><init>()V

    iput-object v2, p0, Li0/p;->y:Li0/I;

    iput-object v1, p0, Li0/p;->x:Li0/A;

    iput v0, p0, Li0/p;->A:I

    iput v0, p0, Li0/p;->B:I

    iput-object v1, p0, Li0/p;->C:Ljava/lang/String;

    iput-boolean v0, p0, Li0/p;->D:Z

    iput-boolean v0, p0, Li0/p;->E:Z

    return-void
.end method

.method public Y0()V
    .locals 3

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->E()V

    iget-object v0, p0, Li0/p;->L:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/p;->X:Li0/V;

    invoke-virtual {v0}, Li0/V;->b()Landroidx/lifecycle/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/g;->b()Landroidx/lifecycle/g$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/g$b;->g:Landroidx/lifecycle/g$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g$b;->f(Landroidx/lifecycle/g$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/p;->X:Li0/V;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Li0/V;->a(Landroidx/lifecycle/g$a;)V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Li0/p;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/p;->J:Z

    invoke-virtual {p0}, Li0/p;->w0()V

    iget-boolean v1, p0, Li0/p;->J:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Lo0/a;->b(Landroidx/lifecycle/k;)Lo0/a;

    move-result-object v1

    invoke-virtual {v1}, Lo0/a;->c()V

    iput-boolean v0, p0, Li0/p;->u:Z

    return-void

    :cond_1
    new-instance v0, Li0/b0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Li0/b0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Z0()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Li0/p;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/p;->J:Z

    invoke-virtual {p0}, Li0/p;->x0()V

    const/4 v0, 0x0

    iput-object v0, p0, Li0/p;->S:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Li0/p;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->H0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->D()V

    new-instance v0, Li0/J;

    invoke-direct {v0}, Li0/J;-><init>()V

    iput-object v0, p0, Li0/p;->y:Li0/I;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Li0/b0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Li0/b0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a0()Z
    .locals 1

    iget-object v0, p0, Li0/p;->x:Li0/A;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li0/p;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a1(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Li0/p;->y0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Li0/p;->S:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public b()Landroidx/lifecycle/g;
    .locals 1

    iget-object v0, p0, Li0/p;->W:Landroidx/lifecycle/l;

    return-object v0
.end method

.method public final b0()Z
    .locals 2

    iget-boolean v0, p0, Li0/p;->D:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Li0/p;->w:Li0/I;

    if-eqz v0, :cond_0

    iget-object v1, p0, Li0/p;->z:Li0/p;

    invoke-virtual {v0, v1}, Li0/I;->L0(Li0/p;)Z

    move-result v0

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

.method public b1()V
    .locals 0

    invoke-virtual {p0}, Li0/p;->onLowMemory()V

    return-void
.end method

.method public final c0()Z
    .locals 1

    iget v0, p0, Li0/p;->v:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c1(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Li0/p;->C0(Z)V

    return-void
.end method

.method public final d0()Z
    .locals 2

    iget-boolean v0, p0, Li0/p;->I:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Li0/p;->w:Li0/I;

    if-eqz v0, :cond_0

    iget-object v1, p0, Li0/p;->z:Li0/p;

    invoke-virtual {v0, v1}, Li0/I;->M0(Li0/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d1(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, Li0/p;->D:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Li0/p;->H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li0/p;->I:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Li0/p;->D0(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0, p1}, Li0/I;->J(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public e0()Z
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Li0/p$g;->t:Z

    return v0
.end method

.method public e1(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Li0/p;->D:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Li0/p;->H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li0/p;->I:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Li0/p;->E0(Landroid/view/Menu;)V

    :cond_0
    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0, p1}, Li0/I;->K(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Z)V
    .locals 2

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Li0/p$g;->t:Z

    :cond_0
    iget-object v0, p0, Li0/p;->L:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Li0/p;->K:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Li0/p;->w:Li0/I;

    if-eqz v1, :cond_2

    invoke-static {v0, v1}, Li0/Z;->u(Landroid/view/ViewGroup;Li0/I;)Li0/Z;

    move-result-object v0

    invoke-virtual {v0}, Li0/Z;->x()V

    if-eqz p1, :cond_1

    iget-object p1, p0, Li0/p;->x:Li0/A;

    invoke-virtual {p1}, Li0/A;->v()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Li0/p$d;

    invoke-direct {v1, p0, v0}, Li0/p$d;-><init>(Li0/p;Li0/Z;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Li0/Z;->n()V

    :goto_0
    iget-object p1, p0, Li0/p;->P:Landroid/os/Handler;

    if-eqz p1, :cond_2

    iget-object v0, p0, Li0/p;->Q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Li0/p;->P:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public final f0()Z
    .locals 1

    iget-boolean v0, p0, Li0/p;->o:Z

    return v0
.end method

.method public f1()V
    .locals 3

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->M()V

    iget-object v0, p0, Li0/p;->L:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/p;->X:Li0/V;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_PAUSE:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Li0/V;->a(Landroidx/lifecycle/g$a;)V

    :cond_0
    iget-object v0, p0, Li0/p;->W:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_PAUSE:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    const/4 v0, 0x6

    iput v0, p0, Li0/p;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/p;->J:Z

    invoke-virtual {p0}, Li0/p;->F0()V

    iget-boolean v0, p0, Li0/p;->J:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Li0/b0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Li0/b0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Li0/w;
    .locals 1

    new-instance v0, Li0/p$e;

    invoke-direct {v0, p0}, Li0/p$e;-><init>(Li0/p;)V

    return-object v0
.end method

.method public final g0()Z
    .locals 1

    iget-object v0, p0, Li0/p;->w:Li0/I;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Li0/I;->P0()Z

    move-result v0

    return v0
.end method

.method public g1(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Li0/p;->G0(Z)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Li0/p;->A:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Li0/p;->B:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li0/p;->C:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Li0/p;->c:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Li0/p;->v:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Li0/p;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Li0/p;->o:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Li0/p;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Li0/p;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Li0/p;->D:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Li0/p;->E:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Li0/p;->I:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Li0/p;->H:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Li0/p;->F:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Li0/p;->N:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Li0/p;->w:Li0/I;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li0/p;->w:Li0/I;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Li0/p;->x:Li0/A;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li0/p;->x:Li0/A;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Li0/p;->z:Li0/p;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li0/p;->z:Li0/p;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Li0/p;->i:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li0/p;->i:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Li0/p;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li0/p;->d:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Li0/p;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li0/p;->e:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Li0/p;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewRegistryState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li0/p;->f:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li0/p;->U(Z)Li0/p;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTarget="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Li0/p;->l:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopDirection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Li0/p;->I()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p0}, Li0/p;->v()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getEnterAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Li0/p;->v()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_8
    invoke-virtual {p0}, Li0/p;->y()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getExitAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Li0/p;->y()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_9
    invoke-virtual {p0}, Li0/p;->J()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getPopEnterAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Li0/p;->J()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_a
    invoke-virtual {p0}, Li0/p;->K()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getPopExitAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Li0/p;->K()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    iget-object v0, p0, Li0/p;->K:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li0/p;->K:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Li0/p;->L:Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Li0/p;->L:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Li0/p;->q()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Li0/p;->q()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p0}, Li0/p;->u()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lo0/a;->b(Landroidx/lifecycle/k;)Lo0/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lo0/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Li0/p;->y:Li0/I;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Li0/I;->W(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic h0()V
    .locals 2

    iget-object v0, p0, Li0/p;->X:Li0/V;

    iget-object v1, p0, Li0/p;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Li0/V;->e(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Li0/p;->f:Landroid/os/Bundle;

    return-void
.end method

.method public h1(Landroid/view/Menu;)Z
    .locals 2

    iget-boolean v0, p0, Li0/p;->D:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Li0/p;->H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li0/p;->I:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Li0/p;->H0(Landroid/view/Menu;)V

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0, p1}, Li0/I;->O(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Li0/p$g;
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    new-instance v0, Li0/p$g;

    invoke-direct {v0}, Li0/p$g;-><init>()V

    iput-object v0, p0, Li0/p;->O:Li0/p$g;

    :cond_0
    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    return-object v0
.end method

.method public i0()V
    .locals 1

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->X0()V

    return-void
.end method

.method public i1()V
    .locals 2

    iget-object v0, p0, Li0/p;->w:Li0/I;

    invoke-virtual {v0, p0}, Li0/I;->N0(Li0/p;)Z

    move-result v0

    iget-object v1, p0, Li0/p;->m:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Li0/p;->m:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Li0/p;->I0(Z)V

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->P()V

    :cond_1
    return-void
.end method

.method public j(Ljava/lang/String;)Li0/p;
    .locals 1

    iget-object v0, p0, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0, p1}, Li0/I;->j0(Ljava/lang/String;)Li0/p;

    move-result-object p1

    return-object p1
.end method

.method public j0(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/p;->J:Z

    return-void
.end method

.method public j1()V
    .locals 3

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->X0()V

    iget-object v0, p0, Li0/p;->y:Li0/I;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li0/I;->a0(Z)Z

    const/4 v0, 0x7

    iput v0, p0, Li0/p;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/p;->J:Z

    invoke-virtual {p0}, Li0/p;->K0()V

    iget-boolean v0, p0, Li0/p;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Li0/p;->W:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_RESUME:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    iget-object v0, p0, Li0/p;->L:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/p;->X:Li0/V;

    invoke-virtual {v0, v1}, Li0/V;->a(Landroidx/lifecycle/g$a;)V

    :cond_0
    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->Q()V

    return-void

    :cond_1
    new-instance v0, Li0/b0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Li0/b0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k0(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " received the following in onActivityResult(): requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public k1(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Li0/p;->L0(Landroid/os/Bundle;)V

    return-void
.end method

.method public final l()Lx0/d;
    .locals 1

    iget-object v0, p0, Li0/p;->a0:Lx0/e;

    invoke-virtual {v0}, Lx0/e;->b()Lx0/d;

    move-result-object v0

    return-object v0
.end method

.method public l0(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/p;->J:Z

    return-void
.end method

.method public l1()V
    .locals 3

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->X0()V

    iget-object v0, p0, Li0/p;->y:Li0/I;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li0/I;->a0(Z)Z

    const/4 v0, 0x5

    iput v0, p0, Li0/p;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/p;->J:Z

    invoke-virtual {p0}, Li0/p;->M0()V

    iget-boolean v0, p0, Li0/p;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Li0/p;->W:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_START:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    iget-object v0, p0, Li0/p;->L:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/p;->X:Li0/V;

    invoke-virtual {v0, v1}, Li0/V;->a(Landroidx/lifecycle/g$a;)V

    :cond_0
    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->R()V

    return-void

    :cond_1
    new-instance v0, Li0/b0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Li0/b0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Li0/u;
    .locals 1

    iget-object v0, p0, Li0/p;->x:Li0/A;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Li0/A;->n()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Li0/u;

    :goto_0
    return-object v0
.end method

.method public m0(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/p;->J:Z

    iget-object p1, p0, Li0/p;->x:Li0/A;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Li0/A;->n()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/p;->J:Z

    invoke-virtual {p0, p1}, Li0/p;->l0(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public m1()V
    .locals 3

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->T()V

    iget-object v0, p0, Li0/p;->L:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/p;->X:Li0/V;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_STOP:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Li0/V;->a(Landroidx/lifecycle/g$a;)V

    :cond_0
    iget-object v0, p0, Li0/p;->W:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_STOP:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    const/4 v0, 0x4

    iput v0, p0, Li0/p;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/p;->J:Z

    invoke-virtual {p0}, Li0/p;->N0()V

    iget-boolean v0, p0, Li0/p;->J:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Li0/b0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Li0/b0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-eqz v0, :cond_1

    iget-object v0, v0, Li0/p$g;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public n0(Li0/p;)V
    .locals 0

    return-void
.end method

.method public n1()V
    .locals 2

    iget-object v0, p0, Li0/p;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "savedInstanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li0/p;->L:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Li0/p;->O0(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->U()V

    return-void
.end method

.method public o()Lm0/a;
    .locals 3

    invoke-virtual {p0}, Li0/p;->q1()Landroid/content/Context;

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
    if-nez v0, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Li0/I;->I0(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find Application instance from Context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Li0/p;->q1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Lm0/b;

    invoke-direct {v1}, Lm0/b;-><init>()V

    if-eqz v0, :cond_3

    sget-object v2, Landroidx/lifecycle/G$a;->e:Lm0/a$b;

    invoke-virtual {v1, v2, v0}, Lm0/b;->b(Lm0/a$b;Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Landroidx/lifecycle/A;->a:Lm0/a$b;

    invoke-virtual {v1, v0, p0}, Lm0/b;->b(Lm0/a$b;Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/A;->b:Lm0/a$b;

    invoke-virtual {v1, v0, p0}, Lm0/b;->b(Lm0/a$b;Ljava/lang/Object;)V

    invoke-virtual {p0}, Li0/p;->r()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/lifecycle/A;->c:Lm0/a$b;

    invoke-virtual {p0}, Li0/p;->r()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lm0/b;->b(Lm0/a$b;Ljava/lang/Object;)V

    :cond_4
    return-object v1
.end method

.method public o0(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final o1(Li0/p$i;)V
    .locals 1

    iget v0, p0, Li0/p;->c:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Li0/p$i;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li0/p;->d0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/p;->J:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Li0/p;->p1()Li0/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/p;->J:Z

    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-eqz v0, :cond_1

    iget-object v0, v0, Li0/p$g;->p:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public p0(Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/p;->J:Z

    invoke-virtual {p0}, Li0/p;->s1()V

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0, p1}, Li0/I;->O0(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Li0/p;->y:Li0/I;

    invoke-virtual {p1}, Li0/I;->B()V

    :cond_0
    return-void
.end method

.method public final p1()Li0/u;
    .locals 3

    invoke-virtual {p0}, Li0/p;->m()Li0/u;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to an activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Li0/p$g;->a:Landroid/view/View;

    return-object v0
.end method

.method public q0(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final q1()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Li0/p;->u()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Li0/p;->i:Landroid/os/Bundle;

    return-object v0
.end method

.method public r0(IZI)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final r1()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Li0/p;->V()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()Li0/I;
    .locals 3

    iget-object v0, p0, Li0/p;->x:Li0/A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/p;->y:Li0/I;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has not been attached yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s0(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public s1()V
    .locals 2

    iget-object v0, p0, Li0/p;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "childFragmentManager"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v1, v0}, Li0/I;->k1(Landroid/os/Parcelable;)V

    iget-object v0, p0, Li0/p;->y:Li0/I;

    invoke-virtual {v0}, Li0/I;->B()V

    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Li0/p;->C1(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public t()Landroidx/lifecycle/H;
    .locals 2

    iget-object v0, p0, Li0/p;->w:Li0/I;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li0/p;->E()I

    move-result v0

    sget-object v1, Landroidx/lifecycle/g$b;->f:Landroidx/lifecycle/g$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Li0/p;->w:Li0/I;

    invoke-virtual {v0, p0}, Li0/I;->D0(Li0/p;)Landroidx/lifecycle/H;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget p3, p0, Li0/p;->b0:I

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final t1()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESTORE_VIEW_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Li0/p;->L:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Li0/p;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Li0/p;->u1(Landroid/os/Bundle;)V

    :cond_2
    iput-object v1, p0, Li0/p;->d:Landroid/os/Bundle;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li0/p;->A:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li0/p;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Li0/p;->C:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/p;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Li0/p;->x:Li0/A;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Li0/A;->o()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public u0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/p;->J:Z

    return-void
.end method

.method public final u1(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Li0/p;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v1, p0, Li0/p;->L:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Li0/p;->e:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/p;->J:Z

    invoke-virtual {p0, p1}, Li0/p;->P0(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Li0/p;->J:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Li0/p;->L:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Li0/p;->X:Li0/V;

    sget-object v0, Landroidx/lifecycle/g$a;->ON_CREATE:Landroidx/lifecycle/g$a;

    invoke-virtual {p1, v0}, Li0/V;->a(Landroidx/lifecycle/g$a;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Li0/b0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Li0/b0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v()I
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Li0/p$g;->c:I

    return v0
.end method

.method public v0()V
    .locals 0

    return-void
.end method

.method public v1(IIII)V
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Li0/p;->i()Li0/p$g;

    move-result-object v0

    iput p1, v0, Li0/p$g;->c:I

    invoke-virtual {p0}, Li0/p;->i()Li0/p$g;

    move-result-object p1

    iput p2, p1, Li0/p$g;->d:I

    invoke-virtual {p0}, Li0/p;->i()Li0/p$g;

    move-result-object p1

    iput p3, p1, Li0/p$g;->e:I

    invoke-virtual {p0}, Li0/p;->i()Li0/p$g;

    move-result-object p1

    iput p4, p1, Li0/p$g;->f:I

    return-void
.end method

.method public w()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Li0/p$g;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public w0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/p;->J:Z

    return-void
.end method

.method public w1(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Li0/p;->w:Li0/I;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li0/p;->g0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Li0/p;->i:Landroid/os/Bundle;

    return-void
.end method

.method public x()LG/t;
    .locals 2

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1
.end method

.method public x0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/p;->J:Z

    return-void
.end method

.method public x1(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Li0/p;->i()Li0/p$g;

    move-result-object v0

    iput-object p1, v0, Li0/p$g;->s:Landroid/view/View;

    return-void
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Li0/p$g;->d:I

    return v0
.end method

.method public y0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Li0/p;->D(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public y1(I)V
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Li0/p;->i()Li0/p$g;

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    iput p1, v0, Li0/p$g;->g:I

    return-void
.end method

.method public z()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Li0/p$g;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public z0(Z)V
    .locals 0

    return-void
.end method

.method public z1(Z)V
    .locals 1

    iget-object v0, p0, Li0/p;->O:Li0/p$g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Li0/p;->i()Li0/p$g;

    move-result-object v0

    iput-boolean p1, v0, Li0/p$g;->b:Z

    return-void
.end method
