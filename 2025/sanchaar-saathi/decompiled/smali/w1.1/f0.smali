.class public final Lw1/f0;
.super Li0/p;
.source "SourceFile"

# interfaces
.implements Lw1/h;


# static fields
.field public static final h0:Ljava/util/WeakHashMap;


# instance fields
.field public final g0:Lw1/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lw1/f0;->h0:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Li0/p;-><init>()V

    new-instance v0, Lw1/e0;

    invoke-direct {v0}, Lw1/e0;-><init>()V

    iput-object v0, p0, Lw1/f0;->g0:Lw1/e0;

    return-void
.end method

.method public static E1(Li0/u;)Lw1/f0;
    .locals 5

    const-string v0, "SLifecycleFragmentImpl"

    invoke-virtual {p0}, Li0/u;->T()Li0/I;

    move-result-object v1

    sget-object v2, Lw1/f0;->h0:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw1/f0;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Li0/I;->i0(Ljava/lang/String;)Li0/p;

    move-result-object v3

    check-cast v3, Lw1/f0;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Li0/p;->f0()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    new-instance v3, Lw1/f0;

    invoke-direct {v3}, Lw1/f0;-><init>()V

    invoke-virtual {v1}, Li0/I;->n()Li0/Q;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Li0/Q;->d(Li0/p;Ljava/lang/String;)Li0/Q;

    move-result-object v0

    invoke-virtual {v0}, Li0/Q;->g()I

    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment with tag SLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final K0()V
    .locals 1

    invoke-super {p0}, Li0/p;->K0()V

    iget-object v0, p0, Lw1/f0;->g0:Lw1/e0;

    invoke-virtual {v0}, Lw1/e0;->e()V

    return-void
.end method

.method public final L0(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Li0/p;->L0(Landroid/os/Bundle;)V

    iget-object v0, p0, Lw1/f0;->g0:Lw1/e0;

    invoke-virtual {v0, p1}, Lw1/e0;->g(Landroid/os/Bundle;)V

    return-void
.end method

.method public final M0()V
    .locals 1

    invoke-super {p0}, Li0/p;->M0()V

    iget-object v0, p0, Lw1/f0;->g0:Lw1/e0;

    invoke-virtual {v0}, Lw1/e0;->d()V

    return-void
.end method

.method public final N0()V
    .locals 1

    invoke-super {p0}, Li0/p;->N0()V

    iget-object v0, p0, Lw1/f0;->g0:Lw1/e0;

    invoke-virtual {v0}, Lw1/e0;->h()V

    return-void
.end method

.method public final a(Ljava/lang/String;Lw1/g;)V
    .locals 1

    iget-object v0, p0, Lw1/f0;->g0:Lw1/e0;

    invoke-virtual {v0, p1, p2}, Lw1/e0;->b(Ljava/lang/String;Lw1/g;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Class;)Lw1/g;
    .locals 1

    iget-object v0, p0, Lw1/f0;->g0:Lw1/e0;

    invoke-virtual {v0, p1, p2}, Lw1/e0;->a(Ljava/lang/String;Ljava/lang/Class;)Lw1/g;

    move-result-object p1

    return-object p1
.end method

.method public final d()Landroid/app/Activity;
    .locals 1

    invoke-virtual {p0}, Li0/p;->m()Li0/u;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Li0/p;->h(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lw1/f0;->g0:Lw1/e0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw1/e0;->j(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Li0/p;->k0(IILandroid/content/Intent;)V

    iget-object v0, p0, Lw1/f0;->g0:Lw1/e0;

    invoke-virtual {v0, p1, p2, p3}, Lw1/e0;->f(IILandroid/content/Intent;)V

    return-void
.end method

.method public final p0(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Li0/p;->p0(Landroid/os/Bundle;)V

    iget-object v0, p0, Lw1/f0;->g0:Lw1/e0;

    invoke-virtual {v0, p1}, Lw1/e0;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public final u0()V
    .locals 1

    invoke-super {p0}, Li0/p;->u0()V

    iget-object v0, p0, Lw1/f0;->g0:Lw1/e0;

    invoke-virtual {v0}, Lw1/e0;->i()V

    return-void
.end method
