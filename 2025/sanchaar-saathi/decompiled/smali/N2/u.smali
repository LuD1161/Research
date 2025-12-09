.class public LN2/u;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements La3/a$c;
.implements LN2/E$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN2/u$e;
    }
.end annotation


# instance fields
.field public A:LN2/w;

.field public c:LN2/m;

.field public d:LN2/n;

.field public e:LN2/l;

.field public f:Lio/flutter/embedding/engine/renderer/n;

.field public g:Lio/flutter/embedding/engine/renderer/n;

.field public final h:Ljava/util/Set;

.field public i:Z

.field public j:Lio/flutter/embedding/engine/a;

.field public final k:Ljava/util/Set;

.field public l:La3/a;

.field public m:Lio/flutter/plugin/editing/p;

.field public n:Lio/flutter/plugin/editing/n;

.field public o:Lio/flutter/plugin/editing/m;

.field public p:LZ2/a;

.field public q:LN2/E;

.field public r:LN2/a;

.field public s:Lio/flutter/view/d;

.field public t:Landroid/view/textservice/TextServicesManager;

.field public u:LN2/J;

.field public final v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

.field public final w:Lio/flutter/view/d$k;

.field public final x:Landroid/database/ContentObserver;

.field public final y:Lio/flutter/embedding/engine/renderer/m;

.field public z:LR/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;LN2/m;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, LN2/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;LN2/m;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LN2/n;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, LN2/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;LN2/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;LN2/m;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LN2/u;->h:Ljava/util/Set;

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LN2/u;->k:Ljava/util/Set;

    .line 6
    new-instance p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-direct {p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;-><init>()V

    iput-object p1, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    .line 7
    new-instance p1, LN2/u$a;

    invoke-direct {p1, p0}, LN2/u$a;-><init>(LN2/u;)V

    iput-object p1, p0, LN2/u;->w:Lio/flutter/view/d$k;

    .line 8
    new-instance p1, LN2/u$b;

    new-instance p2, Landroid/os/Handler;

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, LN2/u$b;-><init>(LN2/u;Landroid/os/Handler;)V

    iput-object p1, p0, LN2/u;->x:Landroid/database/ContentObserver;

    .line 10
    new-instance p1, LN2/u$c;

    invoke-direct {p1, p0}, LN2/u$c;-><init>(LN2/u;)V

    iput-object p1, p0, LN2/u;->y:Lio/flutter/embedding/engine/renderer/m;

    .line 11
    new-instance p1, LN2/w;

    invoke-direct {p1}, LN2/w;-><init>()V

    iput-object p1, p0, LN2/u;->A:LN2/w;

    .line 12
    iput-object p3, p0, LN2/u;->c:LN2/m;

    .line 13
    iput-object p3, p0, LN2/u;->f:Lio/flutter/embedding/engine/renderer/n;

    .line 14
    invoke-virtual {p0}, LN2/u;->u()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;LN2/n;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LN2/u;->h:Ljava/util/Set;

    .line 17
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LN2/u;->k:Ljava/util/Set;

    .line 18
    new-instance p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-direct {p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;-><init>()V

    iput-object p1, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    .line 19
    new-instance p1, LN2/u$a;

    invoke-direct {p1, p0}, LN2/u$a;-><init>(LN2/u;)V

    iput-object p1, p0, LN2/u;->w:Lio/flutter/view/d$k;

    .line 20
    new-instance p1, LN2/u$b;

    new-instance p2, Landroid/os/Handler;

    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, LN2/u$b;-><init>(LN2/u;Landroid/os/Handler;)V

    iput-object p1, p0, LN2/u;->x:Landroid/database/ContentObserver;

    .line 22
    new-instance p1, LN2/u$c;

    invoke-direct {p1, p0}, LN2/u$c;-><init>(LN2/u;)V

    iput-object p1, p0, LN2/u;->y:Lio/flutter/embedding/engine/renderer/m;

    .line 23
    new-instance p1, LN2/w;

    invoke-direct {p1}, LN2/w;-><init>()V

    iput-object p1, p0, LN2/u;->A:LN2/w;

    .line 24
    iput-object p3, p0, LN2/u;->d:LN2/n;

    .line 25
    iput-object p3, p0, LN2/u;->f:Lio/flutter/embedding/engine/renderer/n;

    .line 26
    invoke-virtual {p0}, LN2/u;->u()V

    return-void
.end method

.method public static synthetic d(Landroid/view/textservice/SpellCheckerInfo;)Z
    .locals 0

    invoke-static {p0}, LN2/u;->w(Landroid/view/textservice/SpellCheckerInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(LN2/u;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LN2/u;->z(ZZ)V

    return-void
.end method

.method public static synthetic f(LN2/u;)Lio/flutter/embedding/engine/a;
    .locals 0

    iget-object p0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    return-object p0
.end method

.method public static synthetic g(LN2/u;Z)Z
    .locals 0

    iput-boolean p1, p0, LN2/u;->i:Z

    return p1
.end method

.method public static synthetic h(LN2/u;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, LN2/u;->h:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic i(LN2/u;)LN2/l;
    .locals 0

    iget-object p0, p0, LN2/u;->e:LN2/l;

    return-object p0
.end method

.method public static synthetic j(LN2/u;)V
    .locals 0

    invoke-virtual {p0}, LN2/u;->x()V

    return-void
.end method

.method public static synthetic w(Landroid/view/textservice/SpellCheckerInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.inputmethod.latin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, LN2/u;->e:LN2/l;

    const-string v1, "FlutterView"

    if-nez v0, :cond_0

    const-string p1, "Tried to revert the image view, but no image view is used."

    invoke-static {v1, p1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, LN2/u;->g:Lio/flutter/embedding/engine/renderer/n;

    if-nez v0, :cond_1

    const-string p1, "Tried to revert the image view, but no previous surface was used."

    invoke-static {v1, p1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object v0, p0, LN2/u;->f:Lio/flutter/embedding/engine/renderer/n;

    const/4 v0, 0x0

    iput-object v0, p0, LN2/u;->g:Lio/flutter/embedding/engine/renderer/n;

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    iget-object v1, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, LN2/u;->f:Lio/flutter/embedding/engine/renderer/n;

    invoke-interface {v1}, Lio/flutter/embedding/engine/renderer/n;->b()V

    new-instance v1, LN2/u$d;

    invoke-direct {v1, p0, v0, p1}, LN2/u$d;-><init>(LN2/u;Lio/flutter/embedding/engine/renderer/FlutterRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->i(Lio/flutter/embedding/engine/renderer/m;)V

    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, LN2/u;->e:LN2/l;

    invoke-virtual {v0}, LN2/l;->a()V

    invoke-virtual {p0}, LN2/u;->x()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public B()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    sget-object v0, LX2/u$c;->g:LX2/u$c;

    goto :goto_0

    :cond_0
    sget-object v0, LX2/u$c;->f:LX2/u$c;

    :goto_0
    iget-object v1, p0, LN2/u;->t:Landroid/view/textservice/TextServicesManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_1

    invoke-static {v1}, LN2/q;->a(Landroid/view/textservice/TextServicesManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, LN2/s;

    invoke-direct {v4}, LN2/s;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    iget-object v4, p0, LN2/u;->t:Landroid/view/textservice/TextServicesManager;

    invoke-static {v4}, LN2/r;->a(Landroid/view/textservice/TextServicesManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v4, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v4}, Lio/flutter/embedding/engine/a;->w()LX2/u;

    move-result-object v4

    invoke-virtual {v4}, LX2/u;->d()LX2/u$b;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v4, v5}, LX2/u$b;->f(F)LX2/u$b;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v5}, LX2/u$b;->c(Landroid/util/DisplayMetrics;)LX2/u$b;

    move-result-object v4

    invoke-virtual {v4, v1}, LX2/u$b;->d(Z)LX2/u$b;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_password"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v1, v2}, LX2/u$b;->b(Z)LX2/u$b;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, LX2/u$b;->g(Z)LX2/u$b;

    move-result-object v1

    invoke-virtual {v1, v0}, LX2/u$b;->e(LX2/u$c;)LX2/u$b;

    move-result-object v0

    invoke-virtual {v0}, LX2/u$b;->a()V

    return-void
.end method

.method public final C()V
    .locals 2

    invoke-virtual {p0}, LN2/u;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FlutterView"

    const-string v1, "Tried to send viewport metrics from Android to Flutter but this FlutterView was not attached to a FlutterEngine."

    invoke-static {v0, v1}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->a:F

    iget-object v0, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->p:I

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    iget-object v1, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->x(Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;)V

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public autofill(Landroid/util/SparseArray;)V
    .locals 1

    iget-object v0, p0, LN2/u;->m:Lio/flutter/plugin/editing/p;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/editing/p;->j(Landroid/util/SparseArray;)V

    return-void
.end method

.method public b(I)Landroid/view/PointerIcon;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, LN2/u;->m:Lio/flutter/plugin/editing/p;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/editing/p;->q(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Lio/flutter/plugin/platform/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/t;->G(Landroid/view/View;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, LN2/u;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LN2/u;->q:LN2/E;

    invoke-virtual {v0, p1}, LN2/E;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, LN2/u;->s:Lio/flutter/view/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/view/d;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN2/u;->s:Lio/flutter/view/d;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttachedFlutterEngine()Lio/flutter/embedding/engine/a;
    .locals 1

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    return-object v0
.end method

.method public getBinaryMessenger()LY2/b;
    .locals 1

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()LP2/a;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentImageSurface()LN2/l;
    .locals 1

    iget-object v0, p0, LN2/u;->e:LN2/l;

    return-object v0
.end method

.method public getViewportMetrics()Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;
    .locals 1

    iget-object v0, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, LN2/u;->e:LN2/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LN2/l;->e()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l(Lio/flutter/embedding/engine/renderer/m;)V
    .locals 1

    iget-object v0, p0, LN2/u;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public m(LN2/l;)V
    .locals 1

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {p1, v0}, LN2/l;->c(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    :cond_0
    return-void
.end method

.method public n(Lio/flutter/embedding/engine/a;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attaching to a FlutterEngine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterView"

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN2/u;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    if-ne p1, v0, :cond_0

    const-string p1, "Already attached to this engine. Doing nothing."

    invoke-static {v1, p1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Currently attached to a different engine. Detaching and then attaching to new engine."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN2/u;->s()V

    :cond_1
    iput-object p1, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->m()Z

    move-result v2

    iput-boolean v2, p0, LN2/u;->i:Z

    iget-object v2, p0, LN2/u;->f:Lio/flutter/embedding/engine/renderer/n;

    invoke-interface {v2, v0}, Lio/flutter/embedding/engine/renderer/n;->c(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    iget-object v2, p0, LN2/u;->y:Lio/flutter/embedding/engine/renderer/m;

    invoke-virtual {v0, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->i(Lio/flutter/embedding/engine/renderer/m;)V

    new-instance v0, La3/a;

    iget-object v2, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/a;->n()LX2/m;

    move-result-object v2

    invoke-direct {v0, p0, v2}, La3/a;-><init>(La3/a$c;LX2/m;)V

    iput-object v0, p0, LN2/u;->l:La3/a;

    new-instance v0, Lio/flutter/plugin/editing/p;

    iget-object v2, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/a;->z()LX2/x;

    move-result-object v2

    iget-object v3, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v3}, Lio/flutter/embedding/engine/a;->v()LX2/t;

    move-result-object v3

    iget-object v4, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v4}, Lio/flutter/embedding/engine/a;->q()Lio/flutter/plugin/platform/t;

    move-result-object v4

    invoke-direct {v0, p0, v2, v3, v4}, Lio/flutter/plugin/editing/p;-><init>(Landroid/view/View;LX2/x;LX2/t;Lio/flutter/plugin/platform/t;)V

    iput-object v0, p0, LN2/u;->m:Lio/flutter/plugin/editing/p;

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "textservices"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, LN2/u;->t:Landroid/view/textservice/TextServicesManager;

    new-instance v2, Lio/flutter/plugin/editing/n;

    iget-object v3, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v3}, Lio/flutter/embedding/engine/a;->x()LX2/v;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lio/flutter/plugin/editing/n;-><init>(Landroid/view/textservice/TextServicesManager;LX2/v;)V

    iput-object v2, p0, LN2/u;->n:Lio/flutter/plugin/editing/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "TextServicesManager not supported by device, spell check disabled."

    invoke-static {v1, v0}, LM2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lio/flutter/plugin/editing/m;

    iget-object v1, p0, LN2/u;->m:Lio/flutter/plugin/editing/p;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/p;->p()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/a;->v()LX2/t;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/plugin/editing/m;-><init>(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;LX2/t;)V

    iput-object v0, p0, LN2/u;->o:Lio/flutter/plugin/editing/m;

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->m()LZ2/a;

    move-result-object v0

    iput-object v0, p0, LN2/u;->p:LZ2/a;

    new-instance v0, LN2/E;

    invoke-direct {v0, p0}, LN2/E;-><init>(LN2/E$e;)V

    iput-object v0, p0, LN2/u;->q:LN2/E;

    new-instance v0, LN2/a;

    iget-object v1, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LN2/a;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;Z)V

    iput-object v0, p0, LN2/u;->r:LN2/a;

    new-instance v0, Lio/flutter/view/d;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->h()LX2/a;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "accessibility"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v1, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->q()Lio/flutter/plugin/platform/t;

    move-result-object v8

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lio/flutter/view/d;-><init>(Landroid/view/View;LX2/a;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/n;)V

    iput-object v0, p0, LN2/u;->s:Lio/flutter/view/d;

    iget-object v1, p0, LN2/u;->w:Lio/flutter/view/d$k;

    invoke-virtual {v0, v1}, Lio/flutter/view/d;->Y(Lio/flutter/view/d$k;)V

    iget-object v0, p0, LN2/u;->s:Lio/flutter/view/d;

    invoke-virtual {v0}, Lio/flutter/view/d;->A()Z

    move-result v0

    iget-object v1, p0, LN2/u;->s:Lio/flutter/view/d;

    invoke-virtual {v1}, Lio/flutter/view/d;->C()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, LN2/u;->z(ZZ)V

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Lio/flutter/plugin/platform/t;

    move-result-object v0

    iget-object v1, p0, LN2/u;->s:Lio/flutter/view/d;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/t;->a(Lio/flutter/view/d;)V

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Lio/flutter/plugin/platform/t;

    move-result-object v0

    iget-object v1, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/t;->E(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    iget-object v0, p0, LN2/u;->m:Lio/flutter/plugin/editing/p;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/p;->p()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    invoke-virtual {p0}, LN2/u;->B()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_password"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, LN2/u;->x:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, LN2/u;->C()V

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->q()Lio/flutter/plugin/platform/t;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/flutter/plugin/platform/t;->F(LN2/u;)V

    iget-object p1, p0, LN2/u;->k:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean p1, p0, LN2/u;->i:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, LN2/u;->y:Lio/flutter/embedding/engine/renderer/m;

    invoke-interface {p1}, Lio/flutter/embedding/engine/renderer/m;->g()V

    :cond_2
    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public o()LN2/u$e;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, LN2/u$e;->g:LN2/u$e;

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    sget-object v0, LN2/u$e;->f:LN2/u$e;

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_3

    :cond_2
    sget-object v0, LN2/u$e;->h:LN2/u$e;

    return-object v0

    :cond_3
    sget-object v0, LN2/u$e;->e:LN2/u$e;

    return-object v0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LS/b0;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v2

    iget-object v3, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v2}, Lp/I;->a(Landroid/graphics/Insets;)I

    move-result v4

    iput v4, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->l:I

    iget-object v3, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v2}, Lp/H;->a(Landroid/graphics/Insets;)I

    move-result v4

    iput v4, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->m:I

    iget-object v3, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v2}, Lp/J;->a(Landroid/graphics/Insets;)I

    move-result v4

    iput v4, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->n:I

    iget-object v3, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v2}, Lp/G;->a(Landroid/graphics/Insets;)I

    move-result v2

    iput v2, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->o:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    const/16 v5, 0x1e

    if-lt v1, v5, :cond_3

    invoke-static {}, LN2/p;->a()I

    move-result v1

    invoke-static {p1, v1}, LS/c0;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v1}, Lp/I;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->d:I

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v1}, Lp/H;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->e:I

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v1}, Lp/J;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->f:I

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v1}, Lp/G;->a(Landroid/graphics/Insets;)I

    move-result v1

    iput v1, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->g:I

    invoke-static {}, LS/h0;->a()I

    move-result v1

    invoke-static {p1, v1}, LS/c0;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v1}, Lp/I;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->h:I

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v1}, Lp/H;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->i:I

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v1}, Lp/J;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->j:I

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v1}, Lp/G;->a(Landroid/graphics/Insets;)I

    move-result v1

    iput v1, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->k:I

    invoke-static {}, LS/i0;->a()I

    move-result v1

    invoke-static {p1, v1}, LS/c0;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v1}, Lp/I;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->l:I

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v1}, Lp/H;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->m:I

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v1}, Lp/J;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->n:I

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-static {v1}, Lp/G;->a(Landroid/graphics/Insets;)I

    move-result v1

    iput v1, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->o:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v1}, LN2/o;->a(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    move-result-object v2

    iget-object v3, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iget v4, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->d:I

    invoke-static {v2}, Lp/I;->a(Landroid/graphics/Insets;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->d:I

    iget-object v3, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iget v4, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->e:I

    invoke-static {v2}, Lp/H;->a(Landroid/graphics/Insets;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->e:I

    iget-object v3, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iget v4, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->f:I

    invoke-static {v2}, Lp/J;->a(Landroid/graphics/Insets;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->f:I

    iget-object v3, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iget v4, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->g:I

    invoke-static {v2}, Lp/G;->a(Landroid/graphics/Insets;)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->g:I

    goto :goto_8

    :cond_3
    sget-object v1, LN2/u$e;->e:LN2/u$e;

    if-nez v3, :cond_4

    invoke-virtual {p0}, LN2/u;->o()LN2/u$e;

    move-result-object v1

    :cond_4
    iget-object v5, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_2
    iput v2, v5, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->d:I

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    sget-object v5, LN2/u$e;->g:LN2/u$e;

    if-eq v1, v5, :cond_7

    sget-object v5, LN2/u$e;->h:LN2/u$e;

    if-ne v1, v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    goto :goto_4

    :cond_7
    :goto_3
    move v5, v4

    :goto_4
    iput v5, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->e:I

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    if-eqz v3, :cond_8

    invoke-virtual {p0, p1}, LN2/u;->t(Landroid/view/WindowInsets;)I

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    goto :goto_5

    :cond_8
    move v3, v4

    :goto_5
    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->f:I

    iget-object v2, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    sget-object v3, LN2/u$e;->f:LN2/u$e;

    if-eq v1, v3, :cond_a

    sget-object v3, LN2/u$e;->h:LN2/u$e;

    if-ne v1, v3, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    goto :goto_7

    :cond_a
    :goto_6
    move v1, v4

    :goto_7
    iput v1, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->g:I

    iget-object v1, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iput v4, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->h:I

    iput v4, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->i:I

    invoke-virtual {p0, p1}, LN2/u;->t(Landroid/view/WindowInsets;)I

    move-result v2

    iput v2, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->j:I

    iget-object v1, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iput v4, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->k:I

    :cond_b
    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    const-string v2, "FlutterView"

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisplayCutout area reported with bounds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;

    sget-object v5, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->i:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    sget-object v6, Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;->f:Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;

    invoke-direct {v4, v3, v5, v6}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;-><init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    iget-object p1, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->c(Ljava/util/List;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt p1, v1, :cond_d

    iget-object p1, p0, LN2/u;->A:LN2/w;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-virtual {p1, v1, v3}, LN2/w;->c(Landroid/content/Context;Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;)V

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating window insets (onApplyWindowInsets()):\nStatus bar insets: Top: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Left: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iget v3, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->g:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Right: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iget v4, v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->e:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nKeyboard insets: Bottom: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iget v4, v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->j:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->k:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->i:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "System Gesture Insets - Left: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->o:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Top: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->l:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->m:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Bottom: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->j:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN2/u;->C()V

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, LN2/u;->r()LN2/J;

    move-result-object v0

    iput-object v0, p0, LN2/u;->u:LN2/J;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg3/h;->e(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, LN2/u;->u:LN2/J;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, LN2/t;

    invoke-direct {v1, p0}, LN2/t;-><init>(LN2/u;)V

    iput-object v1, p0, LN2/u;->z:LR/a;

    iget-object v1, p0, LN2/u;->u:LN2/J;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, LH/a;->g(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, LN2/u;->z:LR/a;

    invoke-virtual {v1, v0, v2, v3}, LN2/J;->a(Landroid/app/Activity;Ljava/util/concurrent/Executor;LR/a;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    const-string v0, "FlutterView"

    const-string v1, "Configuration changed. Sending locales and user settings to Flutter."

    invoke-static {v0, v1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/u;->p:LZ2/a;

    invoke-virtual {v0, p1}, LZ2/a;->d(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, LN2/u;->B()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-static {p1, v0}, Lg3/h;->c(Landroid/content/Context;Lg3/h$a;)V

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-virtual {p0}, LN2/u;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, LN2/u;->m:Lio/flutter/plugin/editing/p;

    iget-object v1, p0, LN2/u;->q:LN2/E;

    invoke-virtual {v0, p0, v1, p1}, Lio/flutter/plugin/editing/p;->n(Landroid/view/View;LN2/E;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, LN2/u;->u:LN2/J;

    if-eqz v0, :cond_0

    iget-object v1, p0, LN2/u;->z:LR/a;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, LN2/J;->b(LR/a;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LN2/u;->z:LR/a;

    iput-object v0, p0, LN2/u;->u:LN2/J;

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, LN2/u;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN2/u;->r:LN2/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, LN2/a;->i(Landroid/view/MotionEvent;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, LN2/u;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, LN2/u;->s:Lio/flutter/view/d;

    invoke-virtual {v0, p1}, Lio/flutter/view/d;->J(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    iget-object v0, p0, LN2/u;->m:Lio/flutter/plugin/editing/p;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/p;->y(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size changed. Sending Flutter new viewport metrics. FlutterView was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " x "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", it is now "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "FlutterView"

    invoke-static {p4, p3}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    iput p1, p3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->b:I

    iput p2, p3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->c:I

    invoke-virtual {p0}, LN2/u;->C()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, LN2/u;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    iget-object v0, p0, LN2/u;->r:LN2/a;

    invoke-virtual {v0, p1}, LN2/a;->j(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, LN2/u;->f:Lio/flutter/embedding/engine/renderer/n;

    invoke-interface {v0}, Lio/flutter/embedding/engine/renderer/n;->d()V

    iget-object v0, p0, LN2/u;->e:LN2/l;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LN2/u;->q()LN2/l;

    move-result-object v0

    iput-object v0, p0, LN2/u;->e:LN2/l;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LN2/l;->k(II)V

    :goto_0
    iget-object v0, p0, LN2/u;->f:Lio/flutter/embedding/engine/renderer/n;

    iput-object v0, p0, LN2/u;->g:Lio/flutter/embedding/engine/renderer/n;

    iget-object v0, p0, LN2/u;->e:LN2/l;

    iput-object v0, p0, LN2/u;->f:Lio/flutter/embedding/engine/renderer/n;

    iget-object v1, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/renderer/n;->c(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    :cond_1
    return-void
.end method

.method public q()LN2/l;
    .locals 5

    new-instance v0, LN2/l;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, LN2/l$b;->e:LN2/l$b;

    invoke-direct {v0, v1, v2, v3, v4}, LN2/l;-><init>(Landroid/content/Context;IILN2/l$b;)V

    return-object v0
.end method

.method public r()LN2/J;
    .locals 4

    :try_start_0
    new-instance v0, LN2/J;

    new-instance v1, LJ0/a;

    sget-object v2, LK0/f;->a:LK0/f$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, LK0/f$a;->d(Landroid/content/Context;)LK0/f;

    move-result-object v2

    invoke-direct {v1, v2}, LJ0/a;-><init>(LK0/f;)V

    invoke-direct {v0, v1}, LN2/J;-><init>(LJ0/a;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detaching from a FlutterEngine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterView"

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN2/u;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FlutterView not attached to an engine. Not detaching."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, LN2/u;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, LN2/u;->x:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Lio/flutter/plugin/platform/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/t;->P()V

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Lio/flutter/plugin/platform/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/t;->d()V

    iget-object v0, p0, LN2/u;->s:Lio/flutter/view/d;

    invoke-virtual {v0}, Lio/flutter/view/d;->Q()V

    iput-object v2, p0, LN2/u;->s:Lio/flutter/view/d;

    iget-object v0, p0, LN2/u;->m:Lio/flutter/plugin/editing/p;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/p;->p()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iget-object v0, p0, LN2/u;->m:Lio/flutter/plugin/editing/p;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/p;->o()V

    iget-object v0, p0, LN2/u;->q:LN2/E;

    invoke-virtual {v0}, LN2/E;->d()V

    iget-object v0, p0, LN2/u;->n:Lio/flutter/plugin/editing/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/plugin/editing/n;->b()V

    :cond_1
    iget-object v0, p0, LN2/u;->l:La3/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, La3/a;->c()V

    :cond_2
    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, LN2/u;->i:Z

    iget-object v3, p0, LN2/u;->y:Lio/flutter/embedding/engine/renderer/m;

    invoke-virtual {v0, v3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->t(Lio/flutter/embedding/engine/renderer/m;)V

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->z()V

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->w(Z)V

    iget-object v0, p0, LN2/u;->g:Lio/flutter/embedding/engine/renderer/n;

    if-eqz v0, :cond_3

    iget-object v1, p0, LN2/u;->f:Lio/flutter/embedding/engine/renderer/n;

    iget-object v3, p0, LN2/u;->e:LN2/l;

    if-ne v1, v3, :cond_3

    iput-object v0, p0, LN2/u;->f:Lio/flutter/embedding/engine/renderer/n;

    :cond_3
    iget-object v0, p0, LN2/u;->f:Lio/flutter/embedding/engine/renderer/n;

    invoke-interface {v0}, Lio/flutter/embedding/engine/renderer/n;->a()V

    invoke-virtual {p0}, LN2/u;->x()V

    iput-object v2, p0, LN2/u;->g:Lio/flutter/embedding/engine/renderer/n;

    iput-object v2, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    return-void

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    throw v2
.end method

.method public setDelegate(LN2/w;)V
    .locals 0

    iput-object p1, p0, LN2/u;->A:LN2/w;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LN2/u;->f:Lio/flutter/embedding/engine/renderer/n;

    instance-of v1, v0, LN2/m;

    if-eqz v1, :cond_0

    check-cast v0, LN2/m;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setWindowInfoListenerDisplayFeatures(LK0/j;)V
    .locals 6

    invoke-virtual {p1}, LK0/j;->a()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK0/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowInfoTracker Display Feature reported with bounds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, LK0/a;->a()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlutterView"

    invoke-static {v3, v2}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v2, v1, LK0/c;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, LK0/c;

    invoke-interface {v2}, LK0/c;->b()LK0/c$a;

    move-result-object v3

    sget-object v4, LK0/c$a;->d:LK0/c$a;

    if-ne v3, v4, :cond_0

    sget-object v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->h:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    goto :goto_1

    :cond_0
    sget-object v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->g:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    :goto_1
    invoke-interface {v2}, LK0/c;->getState()LK0/c$b;

    move-result-object v4

    sget-object v5, LK0/c$b;->c:LK0/c$b;

    if-ne v4, v5, :cond_1

    sget-object v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;->g:Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;

    goto :goto_2

    :cond_1
    invoke-interface {v2}, LK0/c;->getState()LK0/c$b;

    move-result-object v2

    sget-object v4, LK0/c$b;->d:LK0/c$b;

    if-ne v2, v4, :cond_2

    sget-object v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;->h:Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;

    goto :goto_2

    :cond_2
    sget-object v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;->f:Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;

    :goto_2
    new-instance v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;

    invoke-interface {v1}, LK0/a;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v4, v1, v3, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;-><init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;

    invoke-interface {v1}, LK0/a;->a()Landroid/graphics/Rect;

    move-result-object v1

    sget-object v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->f:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    sget-object v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;->f:Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;

    invoke-direct {v2, v1, v3, v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;-><init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, LN2/u;->v:Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$h;->d(Ljava/util/List;)V

    invoke-virtual {p0}, LN2/u;->C()V

    return-void
.end method

.method public final t(Landroid/view/WindowInsets;)I
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    const-wide v5, 0x3fc70a3d70a3d70aL    # 0.18

    mul-double/2addr v3, v5

    cmpg-double v0, v1, v3

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    return p1
.end method

.method public final u()V
    .locals 2

    const-string v0, "Initializing FlutterView"

    const-string v1, "FlutterView"

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/u;->c:LN2/m;

    if-eqz v0, :cond_0

    const-string v0, "Internally using a FlutterSurfaceView."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/u;->c:LN2/m;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN2/u;->d:LN2/n;

    if-eqz v0, :cond_1

    const-string v0, "Internally using a FlutterTextureView."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/u;->d:LN2/n;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v0, "Internally using a FlutterImageView."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/u;->e:LN2/l;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAutofill(I)V

    return-void
.end method

.method public v()Z
    .locals 2

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    iget-object v1, p0, LN2/u;->f:Lio/flutter/embedding/engine/renderer/n;

    invoke-interface {v1}, Lio/flutter/embedding/engine/renderer/n;->getAttachedRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, LN2/u;->e:LN2/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LN2/l;->g()V

    iget-object v0, p0, LN2/u;->e:LN2/l;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, LN2/u;->e:LN2/l;

    :cond_0
    return-void
.end method

.method public y(Lio/flutter/embedding/engine/renderer/m;)V
    .locals 1

    iget-object v0, p0, LN2/u;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final z(ZZ)V
    .locals 2

    iget-object v0, p0, LN2/u;->j:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    :goto_0
    return-void
.end method
