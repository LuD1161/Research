.class public abstract Lv1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv1/e$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:LE1/a;

.field public final d:Lv1/a;

.field public final e:Lv1/a$d;

.field public final f:Lw1/b;

.field public final g:Landroid/os/Looper;

.field public final h:I

.field public final i:Lv1/f;

.field public final j:Lw1/l;

.field public final k:Lw1/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lv1/a;Lv1/a$d;Lv1/e$a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lz1/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 2
    invoke-static {p3, v0}, Lz1/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 3
    invoke-static {p5, v0}, Lz1/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "The provided context did not have an application context."

    .line 5
    invoke-static {v0, v1}, Lz1/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lv1/e;->a:Landroid/content/Context;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 6
    invoke-static {p1}, LH/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lv1/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 8
    :goto_0
    iput-object v2, p0, Lv1/e;->b:Ljava/lang/String;

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_1

    .line 9
    new-instance v1, LE1/a;

    invoke-static {p1}, Lv1/d;->a(Landroid/content/Context;)Landroid/content/AttributionSource;

    move-result-object p1

    invoke-direct {v1, p1}, LE1/a;-><init>(Landroid/content/AttributionSource;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lv1/e;->c:LE1/a;

    iput-object p3, p0, Lv1/e;->d:Lv1/a;

    iput-object p4, p0, Lv1/e;->e:Lv1/a$d;

    .line 10
    iget-object p1, p5, Lv1/e$a;->b:Landroid/os/Looper;

    iput-object p1, p0, Lv1/e;->g:Landroid/os/Looper;

    .line 11
    invoke-static {p3, p4, v2}, Lw1/b;->a(Lv1/a;Lv1/a$d;Ljava/lang/String;)Lw1/b;

    move-result-object p1

    iput-object p1, p0, Lv1/e;->f:Lw1/b;

    .line 12
    new-instance p3, Lw1/C;

    invoke-direct {p3, p0}, Lw1/C;-><init>(Lv1/e;)V

    iput-object p3, p0, Lv1/e;->i:Lv1/f;

    .line 13
    invoke-static {v0}, Lw1/e;->m(Landroid/content/Context;)Lw1/e;

    move-result-object p3

    iput-object p3, p0, Lv1/e;->k:Lw1/e;

    .line 14
    invoke-virtual {p3}, Lw1/e;->n()I

    move-result p4

    iput p4, p0, Lv1/e;->h:I

    .line 15
    iget-object p4, p5, Lv1/e$a;->a:Lw1/l;

    iput-object p4, p0, Lv1/e;->j:Lw1/l;

    if-eqz p2, :cond_2

    instance-of p4, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p4, :cond_2

    .line 16
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    if-ne p4, p5, :cond_2

    .line 17
    invoke-static {p2, p3, p1}, Lw1/p;->t(Landroid/app/Activity;Lw1/e;Lw1/b;)V

    .line 18
    :cond_2
    invoke-virtual {p3, p0}, Lw1/e;->o(Lv1/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lv1/a;Lv1/a$d;Lv1/e$a;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 19
    invoke-direct/range {v0 .. v5}, Lv1/e;-><init>(Landroid/content/Context;Landroid/app/Activity;Lv1/a;Lv1/a$d;Lv1/e$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lv1/a;Lv1/a$d;Lw1/l;)V
    .locals 1

    .line 20
    new-instance v0, Lv1/e$a$a;

    invoke-direct {v0}, Lv1/e$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lv1/e$a$a;->b(Lw1/l;)Lv1/e$a$a;

    invoke-virtual {v0}, Lv1/e$a$a;->a()Lv1/e$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lv1/e;-><init>(Landroid/content/Context;Lv1/a;Lv1/a$d;Lv1/e$a;)V

    return-void
.end method


# virtual methods
.method public c()Lv1/f;
    .locals 1

    iget-object v0, p0, Lv1/e;->i:Lv1/f;

    return-object v0
.end method

.method public d()Lz1/e$a;
    .locals 3

    new-instance v0, Lz1/e$a;

    invoke-direct {v0}, Lz1/e$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz1/e$a;->c(Landroid/accounts/Account;)Lz1/e$a;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz1/e$a;->d(Ljava/util/Collection;)Lz1/e$a;

    iget-object v1, p0, Lv1/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz1/e$a;->e(Ljava/lang/String;)Lz1/e$a;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz1/e$a;->b(Ljava/lang/String;)Lz1/e$a;

    return-object v0
.end method

.method public e(Lw1/n;)LR1/f;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lv1/e;->o(ILw1/n;)LR1/f;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lv1/e;->n(ILcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    return-object p1
.end method

.method public g(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final h()Lw1/b;
    .locals 1

    iget-object v0, p0, Lv1/e;->f:Lw1/b;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv1/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lv1/e;->g:Landroid/os/Looper;

    return-object v0
.end method

.method public final k(Landroid/os/Looper;Lw1/w;)Lv1/a$f;
    .locals 8

    invoke-virtual {p0}, Lv1/e;->d()Lz1/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lz1/e$a;->a()Lz1/e;

    move-result-object v4

    iget-object v0, p0, Lv1/e;->d:Lv1/a;

    invoke-virtual {v0}, Lv1/a;->a()Lv1/a$a;

    move-result-object v0

    invoke-static {v0}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lv1/a$a;

    iget-object v5, p0, Lv1/e;->e:Lv1/a$d;

    iget-object v2, p0, Lv1/e;->a:Landroid/content/Context;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lv1/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lz1/e;Ljava/lang/Object;Lv1/f$a;Lv1/f$b;)Lv1/a$f;

    move-result-object p1

    iget-object p2, p0, Lv1/e;->c:LE1/a;

    if-eqz p2, :cond_1

    instance-of v0, p1, Lz1/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lz1/d;

    invoke-virtual {v0, p2}, Lz1/d;->O(LE1/a;)V

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lv1/e;->i()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    instance-of v0, p1, Lz1/d;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lz1/d;

    invoke-virtual {v0, p2}, Lz1/d;->P(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lv1/e;->h:I

    return v0
.end method

.method public final m(Landroid/content/Context;Landroid/os/Handler;)Lw1/M;
    .locals 2

    new-instance v0, Lw1/M;

    invoke-virtual {p0}, Lv1/e;->d()Lz1/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lz1/e$a;->a()Lz1/e;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lw1/M;-><init>(Landroid/content/Context;Landroid/os/Handler;Lz1/e;)V

    return-object v0
.end method

.method public final n(ILcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g()V

    iget-object v0, p0, Lv1/e;->k:Lw1/e;

    invoke-virtual {v0, p0, p1, p2}, Lw1/e;->t(Lv1/e;ILcom/google/android/gms/common/api/internal/a;)V

    return-object p2
.end method

.method public final o(ILw1/n;)LR1/f;
    .locals 7

    new-instance v6, LR1/g;

    invoke-direct {v6}, LR1/g;-><init>()V

    iget-object v5, p0, Lv1/e;->j:Lw1/l;

    iget-object v0, p0, Lv1/e;->k:Lw1/e;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lw1/e;->u(Lv1/e;ILw1/n;LR1/g;Lw1/l;)V

    invoke-virtual {v6}, LR1/g;->a()LR1/f;

    move-result-object p1

    return-object p1
.end method
