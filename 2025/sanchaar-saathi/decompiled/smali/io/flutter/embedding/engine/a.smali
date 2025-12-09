.class public Lio/flutter/embedding/engine/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/a$b;
    }
.end annotation


# instance fields
.field public final a:Lio/flutter/embedding/engine/FlutterJNI;

.field public final b:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field public final c:LP2/a;

.field public final d:LO2/b;

.field public final e:LZ2/a;

.field public final f:LX2/a;

.field public final g:LX2/g;

.field public final h:LX2/k;

.field public final i:LX2/l;

.field public final j:LX2/m;

.field public final k:LX2/n;

.field public final l:LX2/f;

.field public final m:LX2/s;

.field public final n:LX2/o;

.field public final o:LX2/r;

.field public final p:LX2/t;

.field public final q:LX2/u;

.field public final r:LX2/v;

.field public final s:LX2/w;

.field public final t:LX2/x;

.field public final u:Lio/flutter/plugin/platform/t;

.field public final v:Ljava/util/Set;

.field public final w:Lio/flutter/embedding/engine/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LR2/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/t;[Ljava/lang/String;Z)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 4
    invoke-direct/range {v0 .. v7}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;LR2/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/t;[Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LR2/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/t;[Ljava/lang/String;ZZ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 5
    invoke-direct/range {v0 .. v8}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;LR2/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/t;[Ljava/lang/String;ZZLio/flutter/embedding/engine/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LR2/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/t;[Ljava/lang/String;ZZLio/flutter/embedding/engine/b;)V
    .locals 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->v:Ljava/util/Set;

    .line 8
    new-instance v0, Lio/flutter/embedding/engine/a$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/a$a;-><init>(Lio/flutter/embedding/engine/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->w:Lio/flutter/embedding/engine/a$b;

    .line 9
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 11
    :goto_0
    invoke-static {}, LM2/a;->e()LM2/a;

    move-result-object v1

    if-nez p3, :cond_0

    .line 12
    invoke-virtual {v1}, LM2/a;->d()Lio/flutter/embedding/engine/FlutterJNI$c;

    move-result-object p3

    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI$c;->a()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p3

    .line 13
    :cond_0
    iput-object p3, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    .line 14
    new-instance v2, LP2/a;

    invoke-direct {v2, p3, v0}, LP2/a;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/a;->c:LP2/a;

    .line 15
    invoke-virtual {v2}, LP2/a;->o()V

    .line 16
    invoke-static {}, LM2/a;->e()LM2/a;

    move-result-object v0

    invoke-virtual {v0}, LM2/a;->a()LQ2/a;

    .line 17
    new-instance v0, LX2/a;

    invoke-direct {v0, v2, p3}, LX2/a;-><init>(LP2/a;Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->f:LX2/a;

    .line 18
    new-instance v0, LX2/g;

    invoke-direct {v0, v2}, LX2/g;-><init>(LP2/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->g:LX2/g;

    .line 19
    new-instance v0, LX2/k;

    invoke-direct {v0, v2}, LX2/k;-><init>(LP2/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->h:LX2/k;

    .line 20
    new-instance v0, LX2/l;

    invoke-direct {v0, v2}, LX2/l;-><init>(LP2/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->i:LX2/l;

    .line 21
    new-instance v3, LX2/m;

    invoke-direct {v3, v2}, LX2/m;-><init>(LP2/a;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->j:LX2/m;

    .line 22
    new-instance v3, LX2/n;

    invoke-direct {v3, v2}, LX2/n;-><init>(LP2/a;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->k:LX2/n;

    .line 23
    new-instance v3, LX2/f;

    invoke-direct {v3, v2}, LX2/f;-><init>(LP2/a;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->l:LX2/f;

    .line 24
    new-instance v3, LX2/o;

    invoke-direct {v3, v2}, LX2/o;-><init>(LP2/a;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->n:LX2/o;

    .line 25
    new-instance v3, LX2/r;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v2, v4}, LX2/r;-><init>(LP2/a;Landroid/content/pm/PackageManager;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->o:LX2/r;

    .line 26
    new-instance v3, LX2/s;

    invoke-direct {v3, v2, p7}, LX2/s;-><init>(LP2/a;Z)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->m:LX2/s;

    .line 27
    new-instance p7, LX2/t;

    invoke-direct {p7, v2}, LX2/t;-><init>(LP2/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->p:LX2/t;

    .line 28
    new-instance p7, LX2/u;

    invoke-direct {p7, v2}, LX2/u;-><init>(LP2/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->q:LX2/u;

    .line 29
    new-instance p7, LX2/v;

    invoke-direct {p7, v2}, LX2/v;-><init>(LP2/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->r:LX2/v;

    .line 30
    new-instance p7, LX2/w;

    invoke-direct {p7, v2}, LX2/w;-><init>(LP2/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->s:LX2/w;

    .line 31
    new-instance p7, LX2/x;

    invoke-direct {p7, v2}, LX2/x;-><init>(LP2/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->t:LX2/x;

    .line 32
    new-instance p7, LZ2/a;

    invoke-direct {p7, p1, v0}, LZ2/a;-><init>(Landroid/content/Context;LX2/l;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->e:LZ2/a;

    if-nez p2, :cond_1

    .line 33
    invoke-virtual {v1}, LM2/a;->c()LR2/d;

    move-result-object p2

    .line 34
    :cond_1
    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, LR2/d;->m(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p2, p1, p5}, LR2/d;->f(Landroid/content/Context;[Ljava/lang/String;)V

    .line 37
    :cond_2
    iget-object p5, p0, Lio/flutter/embedding/engine/a;->w:Lio/flutter/embedding/engine/a$b;

    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->addEngineLifecycleListener(Lio/flutter/embedding/engine/a$b;)V

    .line 38
    invoke-virtual {p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformViewsController(Lio/flutter/plugin/platform/t;)V

    .line 39
    invoke-virtual {p3, p7}, Lio/flutter/embedding/engine/FlutterJNI;->setLocalizationPlugin(LZ2/a;)V

    .line 40
    invoke-virtual {v1}, LM2/a;->a()LQ2/a;

    const/4 p5, 0x0

    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->setDeferredComponentManager(LQ2/a;)V

    .line 41
    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result p5

    if-nez p5, :cond_3

    .line 42
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->f()V

    .line 43
    :cond_3
    new-instance p5, Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-direct {p5, p3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p5, p0, Lio/flutter/embedding/engine/a;->b:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 44
    iput-object p4, p0, Lio/flutter/embedding/engine/a;->u:Lio/flutter/plugin/platform/t;

    .line 45
    invoke-virtual {p4}, Lio/flutter/plugin/platform/t;->g0()V

    .line 46
    new-instance p3, LO2/b;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4, p0, p2, p8}, LO2/b;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/a;LR2/d;Lio/flutter/embedding/engine/b;)V

    iput-object p3, p0, Lio/flutter/embedding/engine/a;->d:LO2/b;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    invoke-virtual {p7, p4}, LZ2/a;->d(Landroid/content/res/Configuration;)V

    if-eqz p6, :cond_4

    .line 49
    invoke-virtual {p2}, LR2/d;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 50
    invoke-static {p0}, LW2/a;->a(Lio/flutter/embedding/engine/a;)V

    .line 51
    :cond_4
    invoke-static {p1, p0}, Lg3/h;->c(Landroid/content/Context;Lg3/h$a;)V

    .line 52
    new-instance p1, Lb3/a;

    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->s()LX2/r;

    move-result-object p2

    invoke-direct {p1, p2}, Lb3/a;-><init>(LX2/r;)V

    .line 53
    invoke-virtual {p3, p1}, LO2/b;->a(LT2/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LR2/d;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V
    .locals 7

    .line 3
    new-instance v4, Lio/flutter/plugin/platform/t;

    invoke-direct {v4}, Lio/flutter/plugin/platform/t;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;LR2/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/t;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;LR2/d;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic b(Lio/flutter/embedding/engine/a;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/a;->v:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic c(Lio/flutter/embedding/engine/a;)Lio/flutter/plugin/platform/t;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/a;->u:Lio/flutter/plugin/platform/t;

    return-object p0
.end method

.method public static synthetic d(Lio/flutter/embedding/engine/a;)LX2/s;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/a;->m:LX2/s;

    return-object p0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    return v0
.end method

.method public B(Landroid/content/Context;LP2/a$c;Ljava/lang/String;Ljava/util/List;Lio/flutter/plugin/platform/t;ZZ)Lio/flutter/embedding/engine/a;
    .locals 12

    move-object v0, p2

    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    iget-object v2, v1, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v3, v0, LP2/a$c;->c:Ljava/lang/String;

    iget-object v0, v0, LP2/a$c;->b:Ljava/lang/String;

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-virtual {v2, v3, v0, p3, v5}, Lio/flutter/embedding/engine/FlutterJNI;->spawn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v7

    new-instance v0, Lio/flutter/embedding/engine/a;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p1

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;LR2/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/t;[Ljava/lang/String;ZZ)V

    return-object v0

    :cond_0
    move-object v1, p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Spawn can only be called on a fully constructed FlutterEngine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(FFF)V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->updateDisplayMetrics(IFFF)V

    return-void
.end method

.method public e(Lio/flutter/embedding/engine/a$b;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->v:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()V
    .locals 2

    const-string v0, "FlutterEngine"

    const-string v1, "Attaching to JNI."

    invoke-static {v0, v1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->attachToNative()V

    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FlutterEngine failed to attach to its native Object reference."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()V
    .locals 2

    const-string v0, "FlutterEngine"

    const-string v1, "Destroying."

    invoke-static {v0, v1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->v:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/a$b;

    invoke-interface {v1}, Lio/flutter/embedding/engine/a$b;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->d:LO2/b;

    invoke-virtual {v0}, LO2/b;->i()V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->u:Lio/flutter/plugin/platform/t;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/t;->i0()V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->c:LP2/a;

    invoke-virtual {v0}, LP2/a;->p()V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/embedding/engine/a;->w:Lio/flutter/embedding/engine/a$b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->removeEngineLifecycleListener(Lio/flutter/embedding/engine/a$b;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setDeferredComponentManager(LQ2/a;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->detachFromNativeAndReleaseResources()V

    invoke-static {}, LM2/a;->e()LM2/a;

    move-result-object v0

    invoke-virtual {v0}, LM2/a;->a()LQ2/a;

    return-void
.end method

.method public h()LX2/a;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->f:LX2/a;

    return-object v0
.end method

.method public i()LU2/b;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->d:LO2/b;

    return-object v0
.end method

.method public j()LX2/f;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->l:LX2/f;

    return-object v0
.end method

.method public k()LP2/a;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->c:LP2/a;

    return-object v0
.end method

.method public l()LX2/k;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->h:LX2/k;

    return-object v0
.end method

.method public m()LZ2/a;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->e:LZ2/a;

    return-object v0
.end method

.method public n()LX2/m;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->j:LX2/m;

    return-object v0
.end method

.method public o()LX2/n;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->k:LX2/n;

    return-object v0
.end method

.method public p()LX2/o;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->n:LX2/o;

    return-object v0
.end method

.method public q()Lio/flutter/plugin/platform/t;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->u:Lio/flutter/plugin/platform/t;

    return-object v0
.end method

.method public r()LT2/b;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->d:LO2/b;

    return-object v0
.end method

.method public s()LX2/r;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->o:LX2/r;

    return-object v0
.end method

.method public t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->b:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object v0
.end method

.method public u()LX2/s;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->m:LX2/s;

    return-object v0
.end method

.method public v()LX2/t;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->p:LX2/t;

    return-object v0
.end method

.method public w()LX2/u;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->q:LX2/u;

    return-object v0
.end method

.method public x()LX2/v;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->r:LX2/v;

    return-object v0
.end method

.method public y()LX2/w;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->s:LX2/w;

    return-object v0
.end method

.method public z()LX2/x;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->t:LX2/x;

    return-object v0
.end method
