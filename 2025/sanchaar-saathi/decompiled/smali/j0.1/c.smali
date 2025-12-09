.class public final Lj0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/c$a;,
        Lj0/c$b;,
        Lj0/c$c;
    }
.end annotation


# static fields
.field public static final a:Lj0/c;

.field public static b:Lj0/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj0/c;

    invoke-direct {v0}, Lj0/c;-><init>()V

    sput-object v0, Lj0/c;->a:Lj0/c;

    sget-object v0, Lj0/c$c;->d:Lj0/c$c;

    sput-object v0, Lj0/c;->b:Lj0/c$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lj0/g;)V
    .locals 0

    invoke-static {p0, p1}, Lj0/c;->d(Ljava/lang/String;Lj0/g;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;Lj0/g;)V
    .locals 2

    const-string v0, "$violation"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy violation with PENALTY_DEATH in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FragmentStrictMode"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p1
.end method

.method public static final f(Li0/p;Ljava/lang/String;)V
    .locals 4

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousFragmentId"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj0/a;

    invoke-direct {v0, p0, p1}, Lj0/a;-><init>(Li0/p;Ljava/lang/String;)V

    sget-object p1, Lj0/c;->a:Lj0/c;

    invoke-virtual {p1, v0}, Lj0/c;->e(Lj0/g;)V

    invoke-virtual {p1, p0}, Lj0/c;->b(Li0/p;)Lj0/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lj0/c$c;->a()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lj0/c$a;->g:Lj0/c$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v1, p0, v2}, Lj0/c;->l(Lj0/c$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v1, v0}, Lj0/c;->c(Lj0/c$c;Lj0/g;)V

    :cond_0
    return-void
.end method

.method public static final g(Li0/p;Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj0/d;

    invoke-direct {v0, p0, p1}, Lj0/d;-><init>(Li0/p;Landroid/view/ViewGroup;)V

    sget-object p1, Lj0/c;->a:Lj0/c;

    invoke-virtual {p1, v0}, Lj0/c;->e(Lj0/g;)V

    invoke-virtual {p1, p0}, Lj0/c;->b(Li0/p;)Lj0/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lj0/c$c;->a()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lj0/c$a;->h:Lj0/c$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v1, p0, v2}, Lj0/c;->l(Lj0/c$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v1, v0}, Lj0/c;->c(Lj0/c$c;Lj0/g;)V

    :cond_0
    return-void
.end method

.method public static final h(Li0/p;)V
    .locals 5

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj0/e;

    invoke-direct {v0, p0}, Lj0/e;-><init>(Li0/p;)V

    sget-object v1, Lj0/c;->a:Lj0/c;

    invoke-virtual {v1, v0}, Lj0/c;->e(Lj0/g;)V

    invoke-virtual {v1, p0}, Lj0/c;->b(Li0/p;)Lj0/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lj0/c$c;->a()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lj0/c$a;->l:Lj0/c$a;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lj0/c;->l(Lj0/c$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1, v2, v0}, Lj0/c;->c(Lj0/c$c;Lj0/g;)V

    :cond_0
    return-void
.end method

.method public static final i(Li0/p;Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj0/h;

    invoke-direct {v0, p0, p1}, Lj0/h;-><init>(Li0/p;Landroid/view/ViewGroup;)V

    sget-object p1, Lj0/c;->a:Lj0/c;

    invoke-virtual {p1, v0}, Lj0/c;->e(Lj0/g;)V

    invoke-virtual {p1, p0}, Lj0/c;->b(Li0/p;)Lj0/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lj0/c$c;->a()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lj0/c$a;->m:Lj0/c$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v1, p0, v2}, Lj0/c;->l(Lj0/c$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v1, v0}, Lj0/c;->c(Lj0/c$c;Lj0/g;)V

    :cond_0
    return-void
.end method

.method public static final j(Li0/p;Li0/p;I)V
    .locals 3

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedParentFragment"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj0/i;

    invoke-direct {v0, p0, p1, p2}, Lj0/i;-><init>(Li0/p;Li0/p;I)V

    sget-object p1, Lj0/c;->a:Lj0/c;

    invoke-virtual {p1, v0}, Lj0/c;->e(Lj0/g;)V

    invoke-virtual {p1, p0}, Lj0/c;->b(Li0/p;)Lj0/c$c;

    move-result-object p2

    invoke-virtual {p2}, Lj0/c$c;->a()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lj0/c$a;->i:Lj0/c$a;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, p2, p0, v1}, Lj0/c;->l(Lj0/c$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, v0}, Lj0/c;->c(Lj0/c$c;Lj0/g;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Li0/p;)Lj0/c$c;
    .locals 2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Li0/p;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Li0/p;->H()Li0/I;

    move-result-object v0

    const-string v1, "declaringFragment.parentFragmentManager"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Li0/I;->B0()Lj0/c$c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Li0/I;->B0()Lj0/c$c;

    move-result-object p1

    invoke-static {p1}, Lv3/l;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Li0/p;->G()Li0/p;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lj0/c;->b:Lj0/c$c;

    return-object p1
.end method

.method public final c(Lj0/c$c;Lj0/g;)V
    .locals 4

    invoke-virtual {p2}, Lj0/g;->a()Li0/p;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lj0/c$c;->a()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lj0/c$a;->e:Lj0/c$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy violation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentStrictMode"

    invoke-static {v3, v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p1}, Lj0/c$c;->b()Lj0/c$b;

    invoke-virtual {p1}, Lj0/c$c;->a()Ljava/util/Set;

    move-result-object p1

    sget-object v2, Lj0/c$a;->f:Lj0/c$a;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lj0/b;

    invoke-direct {p1, v1, p2}, Lj0/b;-><init>(Ljava/lang/String;Lj0/g;)V

    invoke-virtual {p0, v0, p1}, Lj0/c;->k(Li0/p;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final e(Lj0/g;)V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrictMode violation in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lj0/g;->a()Li0/p;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final k(Li0/p;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p1}, Li0/p;->a0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Li0/p;->H()Li0/I;

    move-result-object p1

    invoke-virtual {p1}, Li0/I;->v0()Li0/A;

    move-result-object p1

    invoke-virtual {p1}, Li0/A;->v()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public final l(Lj0/c$c;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lj0/c$c;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lj0/g;

    invoke-static {v0, v1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Li3/w;->t(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p2

    return p1
.end method
