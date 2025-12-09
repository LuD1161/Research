.class public abstract Lz1/h;
.super Lz1/d;
.source "SourceFile"

# interfaces
.implements Lv1/a$f;


# static fields
.field public static volatile J:Ljava/util/concurrent/Executor;


# instance fields
.field public final G:Lz1/e;

.field public final H:Ljava/util/Set;

.field public final I:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILz1/e;Lv1/f$a;Lv1/f$b;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lz1/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILz1/e;Lw1/d;Lw1/j;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILz1/e;Lw1/d;Lw1/j;)V
    .locals 9

    .line 2
    invoke-static {p1}, Lz1/i;->a(Landroid/content/Context;)Lz1/i;

    move-result-object v3

    .line 3
    invoke-static {}, Lu1/d;->m()Lu1/d;

    move-result-object v4

    .line 4
    invoke-static {p5}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v7, p5

    check-cast v7, Lw1/d;

    .line 5
    invoke-static {p6}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v8, p5

    check-cast v8, Lw1/j;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 6
    invoke-direct/range {v0 .. v8}, Lz1/h;-><init>(Landroid/content/Context;Landroid/os/Looper;Lz1/i;Lu1/d;ILz1/e;Lw1/d;Lw1/j;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lz1/i;Lu1/d;ILz1/e;Lw1/d;Lw1/j;)V
    .locals 10

    move-object v9, p0

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v6, v2

    goto :goto_0

    .line 7
    :cond_0
    new-instance v3, Lz1/A;

    invoke-direct {v3, v0}, Lz1/A;-><init>(Lw1/d;)V

    move-object v6, v3

    :goto_0
    if-nez v1, :cond_1

    move-object v7, v2

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Lz1/B;

    invoke-direct {v0, v1}, Lz1/B;-><init>(Lw1/j;)V

    move-object v7, v0

    .line 9
    :goto_1
    invoke-virtual/range {p6 .. p6}, Lz1/e;->f()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 10
    invoke-direct/range {v0 .. v8}, Lz1/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lz1/i;Lu1/e;ILz1/d$a;Lz1/d$b;Ljava/lang/String;)V

    move-object/from16 v0, p6

    iput-object v0, v9, Lz1/h;->G:Lz1/e;

    .line 11
    invoke-virtual/range {p6 .. p6}, Lz1/e;->a()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, v9, Lz1/h;->I:Landroid/accounts/Account;

    .line 12
    invoke-virtual/range {p6 .. p6}, Lz1/e;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz1/h;->j0(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v9, Lz1/h;->H:Ljava/util/Set;

    return-void
.end method

.method public static k0(Ljava/util/concurrent/Executor;)V
    .locals 0

    sput-object p0, Lz1/h;->J:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final B()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lz1/h;->H:Ljava/util/Set;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lz1/d;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz1/h;->H:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public i0(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    return-object p1
.end method

.method public final j0(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    invoke-virtual {p0, p1}, Lz1/h;->i0(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method public final t()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lz1/h;->I:Landroid/accounts/Account;

    return-object v0
.end method

.method public v()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lz1/h;->J:Ljava/util/concurrent/Executor;

    return-object v0
.end method
