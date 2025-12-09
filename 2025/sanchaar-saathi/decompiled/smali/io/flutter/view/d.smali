.class public Lio/flutter/view/d;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/d$h;,
        Lio/flutter/view/d$l;,
        Lio/flutter/view/d$k;,
        Lio/flutter/view/d$f;,
        Lio/flutter/view/d$i;,
        Lio/flutter/view/d$g;,
        Lio/flutter/view/d$j;,
        Lio/flutter/view/d$m;,
        Lio/flutter/view/d$n;,
        Lio/flutter/view/d$o;,
        Lio/flutter/view/d$p;
    }
.end annotation


# static fields
.field public static final A:I

.field public static B:I

.field public static C:I

.field public static final z:I


# instance fields
.field public final a:Landroid/view/View;

.field public final b:LX2/a;

.field public final c:Landroid/view/accessibility/AccessibilityManager;

.field public final d:Lio/flutter/view/AccessibilityViewEmbedder;

.field public final e:Lio/flutter/plugin/platform/n;

.field public final f:Landroid/content/ContentResolver;

.field public final g:Ljava/util/Map;

.field public final h:Ljava/util/Map;

.field public i:Lio/flutter/view/d$l;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Integer;

.field public l:I

.field public m:Lio/flutter/view/d$l;

.field public n:Lio/flutter/view/d$l;

.field public o:Lio/flutter/view/d$l;

.field public final p:Ljava/util/List;

.field public q:I

.field public r:Ljava/lang/Integer;

.field public s:Lio/flutter/view/d$k;

.field public t:Z

.field public u:Z

.field public final v:LX2/a$b;

.field public final w:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field public final x:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field public final y:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lio/flutter/view/d$g;->i:Lio/flutter/view/d$g;

    iget v0, v0, Lio/flutter/view/d$g;->e:I

    sget-object v1, Lio/flutter/view/d$g;->h:Lio/flutter/view/d$g;

    iget v1, v1, Lio/flutter/view/d$g;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/d$g;->j:Lio/flutter/view/d$g;

    iget v1, v1, Lio/flutter/view/d$g;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/d$g;->k:Lio/flutter/view/d$g;

    iget v1, v1, Lio/flutter/view/d$g;->e:I

    or-int/2addr v0, v1

    sput v0, Lio/flutter/view/d;->z:I

    sget-object v0, Lio/flutter/view/d$i;->f:Lio/flutter/view/d$i;

    iget v0, v0, Lio/flutter/view/d$i;->e:I

    sget-object v1, Lio/flutter/view/d$i;->g:Lio/flutter/view/d$i;

    iget v1, v1, Lio/flutter/view/d$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/d$i;->h:Lio/flutter/view/d$i;

    iget v1, v1, Lio/flutter/view/d$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/d$i;->j:Lio/flutter/view/d$i;

    iget v1, v1, Lio/flutter/view/d$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/d$i;->k:Lio/flutter/view/d$i;

    iget v1, v1, Lio/flutter/view/d$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/d$i;->l:Lio/flutter/view/d$i;

    iget v1, v1, Lio/flutter/view/d$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/d$i;->m:Lio/flutter/view/d$i;

    iget v1, v1, Lio/flutter/view/d$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/d$i;->n:Lio/flutter/view/d$i;

    iget v1, v1, Lio/flutter/view/d$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/d$i;->v:Lio/flutter/view/d$i;

    iget v1, v1, Lio/flutter/view/d$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/d$i;->w:Lio/flutter/view/d$i;

    iget v1, v1, Lio/flutter/view/d$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/d$i;->A:Lio/flutter/view/d$i;

    iget v1, v1, Lio/flutter/view/d$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/d$i;->C:Lio/flutter/view/d$i;

    iget v1, v1, Lio/flutter/view/d$i;->e:I

    or-int/2addr v0, v1

    sput v0, Lio/flutter/view/d;->A:I

    const v0, 0xff00001

    sput v0, Lio/flutter/view/d;->B:I

    sget-object v0, Lio/flutter/view/d$g;->u:Lio/flutter/view/d$g;

    iget v0, v0, Lio/flutter/view/d$g;->e:I

    sget-object v1, Lio/flutter/view/d$g;->v:Lio/flutter/view/d$g;

    iget v1, v1, Lio/flutter/view/d$g;->e:I

    and-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/d$g;->n:Lio/flutter/view/d$g;

    iget v1, v1, Lio/flutter/view/d$g;->e:I

    and-int/2addr v0, v1

    sput v0, Lio/flutter/view/d;->C:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;LX2/a;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/n;)V
    .locals 7

    .line 1
    new-instance v5, Lio/flutter/view/AccessibilityViewEmbedder;

    const/high16 v0, 0x10000

    invoke-direct {v5, p1, v0}, Lio/flutter/view/AccessibilityViewEmbedder;-><init>(Landroid/view/View;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/flutter/view/d;-><init>(Landroid/view/View;LX2/a;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;LX2/a;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/n;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/view/d;->g:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/view/d;->h:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/flutter/view/d;->l:I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/flutter/view/d;->p:Ljava/util/List;

    .line 7
    iput v0, p0, Lio/flutter/view/d;->q:I

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/d;->r:Ljava/lang/Integer;

    .line 9
    iput-boolean v0, p0, Lio/flutter/view/d;->t:Z

    .line 10
    iput-boolean v0, p0, Lio/flutter/view/d;->u:Z

    .line 11
    new-instance v1, Lio/flutter/view/d$a;

    invoke-direct {v1, p0}, Lio/flutter/view/d$a;-><init>(Lio/flutter/view/d;)V

    iput-object v1, p0, Lio/flutter/view/d;->v:LX2/a$b;

    .line 12
    new-instance v1, Lio/flutter/view/d$b;

    invoke-direct {v1, p0}, Lio/flutter/view/d$b;-><init>(Lio/flutter/view/d;)V

    iput-object v1, p0, Lio/flutter/view/d;->w:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 13
    new-instance v2, Lio/flutter/view/d$c;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lio/flutter/view/d$c;-><init>(Lio/flutter/view/d;Landroid/os/Handler;)V

    iput-object v2, p0, Lio/flutter/view/d;->y:Landroid/database/ContentObserver;

    .line 14
    iput-object p1, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    .line 15
    iput-object p2, p0, Lio/flutter/view/d;->b:LX2/a;

    .line 16
    iput-object p3, p0, Lio/flutter/view/d;->c:Landroid/view/accessibility/AccessibilityManager;

    .line 17
    iput-object p4, p0, Lio/flutter/view/d;->f:Landroid/content/ContentResolver;

    .line 18
    iput-object p5, p0, Lio/flutter/view/d;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 19
    iput-object p6, p0, Lio/flutter/view/d;->e:Lio/flutter/plugin/platform/n;

    .line 20
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    invoke-interface {v1, p1}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    .line 21
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 22
    new-instance p1, Lio/flutter/view/d$d;

    invoke-direct {p1, p0, p3}, Lio/flutter/view/d$d;-><init>(Lio/flutter/view/d;Landroid/view/accessibility/AccessibilityManager;)V

    iput-object p1, p0, Lio/flutter/view/d;->x:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 23
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    .line 24
    invoke-interface {p1, p2}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    .line 25
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 26
    invoke-virtual {v2, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 27
    const-string p1, "transition_animation_scale"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 28
    invoke-virtual {p4, p1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 29
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_0

    .line 30
    invoke-virtual {p0}, Lio/flutter/view/d;->X()V

    .line 31
    :cond_0
    invoke-interface {p6, p0}, Lio/flutter/plugin/platform/n;->a(Lio/flutter/view/d;)V

    return-void
.end method

.method public static synthetic D(Lio/flutter/view/d$l;Lio/flutter/view/d$l;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic E(Lio/flutter/view/d$l;)Z
    .locals 1

    sget-object v0, Lio/flutter/view/d$i;->x:Lio/flutter/view/d$i;

    invoke-static {p0, v0}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lio/flutter/view/d$l;Lio/flutter/view/d$l;)Z
    .locals 0

    invoke-static {p0, p1}, Lio/flutter/view/d;->D(Lio/flutter/view/d$l;Lio/flutter/view/d$l;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lio/flutter/view/d$l;)Z
    .locals 0

    invoke-static {p0}, Lio/flutter/view/d;->E(Lio/flutter/view/d$l;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lio/flutter/view/d;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic d(Lio/flutter/view/d;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d;->f:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static synthetic e(Lio/flutter/view/d;I)I
    .locals 1

    iget v0, p0, Lio/flutter/view/d;->l:I

    and-int/2addr p1, v0

    iput p1, p0, Lio/flutter/view/d;->l:I

    return p1
.end method

.method public static synthetic f(Lio/flutter/view/d;I)I
    .locals 1

    iget v0, p0, Lio/flutter/view/d;->l:I

    or-int/2addr p1, v0

    iput p1, p0, Lio/flutter/view/d;->l:I

    return p1
.end method

.method public static synthetic g(Lio/flutter/view/d;)V
    .locals 0

    invoke-virtual {p0}, Lio/flutter/view/d;->T()V

    return-void
.end method

.method public static synthetic h(Lio/flutter/view/d;)V
    .locals 0

    invoke-virtual {p0}, Lio/flutter/view/d;->L()V

    return-void
.end method

.method public static synthetic i(Lio/flutter/view/d;)Z
    .locals 0

    iget-boolean p0, p0, Lio/flutter/view/d;->u:Z

    return p0
.end method

.method public static synthetic j(Lio/flutter/view/d;)LX2/a$b;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d;->v:LX2/a$b;

    return-object p0
.end method

.method public static synthetic k(Lio/flutter/view/d;)LX2/a;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d;->b:LX2/a;

    return-object p0
.end method

.method public static synthetic l(Lio/flutter/view/d;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/flutter/view/d;->W(Z)V

    return-void
.end method

.method public static synthetic m(Lio/flutter/view/d;I)Lio/flutter/view/d$l;
    .locals 0

    invoke-virtual {p0, p1}, Lio/flutter/view/d;->x(I)Lio/flutter/view/d$l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lio/flutter/view/d;I)Lio/flutter/view/d$h;
    .locals 0

    invoke-virtual {p0, p1}, Lio/flutter/view/d;->w(I)Lio/flutter/view/d$h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o()I
    .locals 1

    sget v0, Lio/flutter/view/d;->z:I

    return v0
.end method

.method public static synthetic p()I
    .locals 1

    sget v0, Lio/flutter/view/d;->A:I

    return v0
.end method

.method public static synthetic q(Lio/flutter/view/d;)Lio/flutter/view/d$k;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d;->s:Lio/flutter/view/d$k;

    return-object p0
.end method

.method public static synthetic r(Lio/flutter/view/d;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, Lio/flutter/view/d;->c:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Lio/flutter/view/d;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final B(Lio/flutter/view/d$l;)Z
    .locals 3

    sget-object v0, Lio/flutter/view/d$i;->q:Lio/flutter/view/d$i;

    invoke-static {p1, v0}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lio/flutter/view/d$l;->B(Lio/flutter/view/d$l;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {p1}, Lio/flutter/view/d$l;->F(Lio/flutter/view/d$l;)I

    move-result p1

    sget v0, Lio/flutter/view/d;->C:I

    not-int v0, v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Lio/flutter/view/d;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public F(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method public final G(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    invoke-virtual {p0, p2}, Lio/flutter/view/d;->F(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    iget-object v0, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    return-object p2
.end method

.method public H(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public I(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public J(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/flutter/view/d;->K(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method public K(Landroid/view/MotionEvent;Z)Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lio/flutter/view/d;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lio/flutter/view/d;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lio/flutter/view/d;->y()Lio/flutter/view/d$l;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/4 v5, 0x4

    new-array v5, v5, [F

    aput v3, v5, v2

    aput v4, v5, v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v3, v5, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    aput v3, v5, v4

    invoke-static {v1, v5, p2}, Lio/flutter/view/d$l;->L(Lio/flutter/view/d$l;[FZ)Lio/flutter/view/d$l;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lio/flutter/view/d$l;->e(Lio/flutter/view/d$l;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-eqz p2, :cond_2

    return v2

    :cond_2
    iget-object p2, p0, Lio/flutter/view/d;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-static {v1}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->onAccessibilityHoverEvent(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v3, 0x9

    if-eq v1, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 v1, 0xa

    if-ne p2, v1, :cond_5

    invoke-virtual {p0}, Lio/flutter/view/d;->L()V

    goto :goto_1

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected accessibility hover event: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "flutter"

    invoke-static {p2, p1}, LM2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v1, p1, p2}, Lio/flutter/view/d;->z(FFZ)V

    :goto_1
    return v0
.end method

.method public final L()V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d;->o:Lio/flutter/view/d$l;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v0

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lio/flutter/view/d;->R(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/view/d;->o:Lio/flutter/view/d$l;

    :cond_0
    return-void
.end method

.method public final M(Lio/flutter/view/d$l;)V
    .locals 0

    invoke-static {p1}, Lio/flutter/view/d$l;->f0(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, " "

    :cond_0
    invoke-virtual {p0, p1}, Lio/flutter/view/d;->V(Ljava/lang/String;)V

    return-void
.end method

.method public final N(Lio/flutter/view/d$l;ILandroid/os/Bundle;Z)Z
    .locals 4

    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p1}, Lio/flutter/view/d$l;->j(Lio/flutter/view/d$l;)I

    move-result v1

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result v2

    invoke-virtual {p0, p1, v0, p4, p3}, Lio/flutter/view/d;->P(Lio/flutter/view/d$l;IZZ)V

    invoke-static {p1}, Lio/flutter/view/d$l;->j(Lio/flutter/view/d$l;)I

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result v1

    if-eq v2, v1, :cond_2

    :cond_0
    invoke-static {p1}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-static {p1}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v2

    const/16 v3, 0x2000

    invoke-virtual {p0, v2, v3}, Lio/flutter/view/d;->G(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lio/flutter/view/d$l;->j(Lio/flutter/view/d$l;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    invoke-virtual {p0, v2}, Lio/flutter/view/d;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 p1, 0x4

    if-eq v0, p1, :cond_3

    const/16 p1, 0x8

    if-eq v0, p1, :cond_3

    const/16 p1, 0x10

    if-eq v0, p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    if-eqz p4, :cond_5

    sget-object v0, Lio/flutter/view/d$g;->y:Lio/flutter/view/d$g;

    invoke-static {p1, v0}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, p0, Lio/flutter/view/d;->b:LX2/a;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, v0, p3}, LX2/a;->c(ILio/flutter/view/d$g;Ljava/lang/Object;)V

    return v1

    :cond_5
    if-nez p4, :cond_8

    sget-object p4, Lio/flutter/view/d$g;->z:Lio/flutter/view/d$g;

    invoke-static {p1, p4}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lio/flutter/view/d;->b:LX2/a;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, LX2/a;->c(ILio/flutter/view/d$g;Ljava/lang/Object;)V

    return v1

    :cond_6
    if-eqz p4, :cond_7

    sget-object v0, Lio/flutter/view/d$g;->o:Lio/flutter/view/d$g;

    invoke-static {p1, v0}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p1, p0, Lio/flutter/view/d;->b:LX2/a;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, v0, p3}, LX2/a;->c(ILio/flutter/view/d$g;Ljava/lang/Object;)V

    return v1

    :cond_7
    if-nez p4, :cond_8

    sget-object p4, Lio/flutter/view/d$g;->p:Lio/flutter/view/d$g;

    invoke-static {p1, p4}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lio/flutter/view/d;->b:LX2/a;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, LX2/a;->c(ILio/flutter/view/d$g;Ljava/lang/Object;)V

    return v1

    :cond_8
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final O(Lio/flutter/view/d$l;ILandroid/os/Bundle;)Z
    .locals 2

    if-eqz p3, :cond_0

    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    iget-object v0, p0, Lio/flutter/view/d;->b:LX2/a;

    sget-object v1, Lio/flutter/view/d$g;->A:Lio/flutter/view/d$g;

    invoke-virtual {v0, p2, v1, p3}, LX2/a;->c(ILio/flutter/view/d$g;Ljava/lang/Object;)V

    invoke-static {p1, p3}, Lio/flutter/view/d$l;->s(Lio/flutter/view/d$l;Ljava/lang/String;)Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/flutter/view/d$l;->H(Lio/flutter/view/d$l;Ljava/util/List;)Ljava/util/List;

    const/4 p1, 0x1

    return p1
.end method

.method public final P(Lio/flutter/view/d$l;IZZ)V
    .locals 3

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-static {p1}, Lio/flutter/view/d$l;->j(Lio/flutter/view/d$l;)I

    move-result v0

    if-gez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_a

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p2, v1, :cond_7

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p1}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/d$l;->m(Lio/flutter/view/d$l;I)I

    goto/16 :goto_0

    :cond_2
    invoke-static {p1, v2}, Lio/flutter/view/d$l;->m(Lio/flutter/view/d$l;I)I

    goto/16 :goto_0

    :cond_3
    if-eqz p3, :cond_5

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result p2

    invoke-static {p1}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_5

    const-string p2, "(?!^)(\\n)"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-static {p1}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/d$l;->n(Lio/flutter/view/d$l;I)I

    goto/16 :goto_0

    :cond_4
    invoke-static {p1}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/d$l;->m(Lio/flutter/view/d$l;I)I

    goto/16 :goto_0

    :cond_5
    if-nez p3, :cond_c

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result p2

    if-lez p2, :cond_c

    const-string p2, "(?s:.*)(\\n)"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-static {p1}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result v1

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/d$l;->m(Lio/flutter/view/d$l;I)I

    goto/16 :goto_0

    :cond_6
    invoke-static {p1, v2}, Lio/flutter/view/d$l;->m(Lio/flutter/view/d$l;I)I

    goto/16 :goto_0

    :cond_7
    if-eqz p3, :cond_9

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result p2

    invoke-static {p1}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_9

    const-string p2, "\\p{L}(\\b)"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-static {p1}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/d$l;->n(Lio/flutter/view/d$l;I)I

    goto :goto_0

    :cond_8
    invoke-static {p1}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/d$l;->m(Lio/flutter/view/d$l;I)I

    goto :goto_0

    :cond_9
    if-nez p3, :cond_c

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result p2

    if-lez p2, :cond_c

    const-string p2, "(?s:.*)(\\b)\\p{L}"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-static {p1}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result v1

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/d$l;->m(Lio/flutter/view/d$l;I)I

    goto :goto_0

    :cond_a
    if-eqz p3, :cond_b

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result p2

    invoke-static {p1}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_b

    invoke-static {p1, v0}, Lio/flutter/view/d$l;->n(Lio/flutter/view/d$l;I)I

    goto :goto_0

    :cond_b
    if-nez p3, :cond_c

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result p2

    if-lez p2, :cond_c

    invoke-static {p1, v0}, Lio/flutter/view/d$l;->o(Lio/flutter/view/d$l;I)I

    :cond_c
    :goto_0
    if-nez p4, :cond_d

    invoke-static {p1}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/d$l;->k(Lio/flutter/view/d$l;I)I

    :cond_d
    :goto_1
    return-void
.end method

.method public Q()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/view/d;->u:Z

    iget-object v0, p0, Lio/flutter/view/d;->e:Lio/flutter/plugin/platform/n;

    invoke-interface {v0}, Lio/flutter/plugin/platform/n;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/flutter/view/d;->Y(Lio/flutter/view/d$k;)V

    iget-object v1, p0, Lio/flutter/view/d;->c:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/flutter/view/d;->w:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v1, p0, Lio/flutter/view/d;->c:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/flutter/view/d;->x:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    iget-object v1, p0, Lio/flutter/view/d;->f:Landroid/content/ContentResolver;

    iget-object v2, p0, Lio/flutter/view/d;->y:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lio/flutter/view/d;->b:LX2/a;

    invoke-virtual {v1, v0}, LX2/a;->g(LX2/a$b;)V

    return-void
.end method

.method public R(II)V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/d;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/flutter/view/d;->G(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/view/d;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final S(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
.end method

.method public final T()V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d;->b:LX2/a;

    iget v1, p0, Lio/flutter/view/d;->l:I

    invoke-virtual {v0, v1}, LX2/a;->f(I)V

    return-void
.end method

.method public final U(I)V
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, p1, v0}, Lio/flutter/view/d;->G(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-virtual {p0, p1}, Lio/flutter/view/d;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final V(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final W(Z)V
    .locals 1

    iget-boolean v0, p0, Lio/flutter/view/d;->t:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lio/flutter/view/d;->t:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lio/flutter/view/d;->l:I

    sget-object v0, Lio/flutter/view/d$f;->f:Lio/flutter/view/d$f;

    iget v0, v0, Lio/flutter/view/d$f;->e:I

    or-int/2addr p1, v0

    iput p1, p0, Lio/flutter/view/d;->l:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lio/flutter/view/d;->l:I

    sget-object v0, Lio/flutter/view/d$f;->f:Lio/flutter/view/d$f;

    iget v0, v0, Lio/flutter/view/d$f;->e:I

    not-int v0, v0

    and-int/2addr p1, v0

    iput p1, p0, Lio/flutter/view/d;->l:I

    :goto_0
    invoke-virtual {p0}, Lio/flutter/view/d;->T()V

    return-void
.end method

.method public final X()V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/view/a;->a(Landroid/content/res/Configuration;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    iget v0, p0, Lio/flutter/view/d;->l:I

    sget-object v1, Lio/flutter/view/d$f;->i:Lio/flutter/view/d$f;

    iget v1, v1, Lio/flutter/view/d$f;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lio/flutter/view/d;->l:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lio/flutter/view/d;->l:I

    sget-object v1, Lio/flutter/view/d$f;->i:Lio/flutter/view/d$f;

    iget v1, v1, Lio/flutter/view/d$f;->e:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lio/flutter/view/d;->l:I

    :goto_0
    invoke-virtual {p0}, Lio/flutter/view/d;->T()V

    :cond_2
    :goto_1
    return-void
.end method

.method public Y(Lio/flutter/view/d$k;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/d;->s:Lio/flutter/view/d$k;

    return-void
.end method

.method public final Z(Lio/flutter/view/d$l;)Z
    .locals 2

    invoke-static {p1}, Lio/flutter/view/d$l;->c(Lio/flutter/view/d$l;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    new-instance v1, Lio/flutter/view/b;

    invoke-direct {v1, p1}, Lio/flutter/view/b;-><init>(Lio/flutter/view/d$l;)V

    invoke-static {v0, v1}, Lio/flutter/view/d$l;->d(Lio/flutter/view/d$l;Lg3/d;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    new-instance v0, Lio/flutter/view/c;

    invoke-direct {v0}, Lio/flutter/view/c;-><init>()V

    invoke-static {p1, v0}, Lio/flutter/view/d$l;->d(Lio/flutter/view/d$l;Lg3/d;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a0(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 4

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/flutter/view/d;->w(I)Lio/flutter/view/d$h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v0, v1}, Lio/flutter/view/d$h;->j(Lio/flutter/view/d$h;I)I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    aget-object v1, p2, v1

    :goto_1
    invoke-static {v0, v1}, Lio/flutter/view/d$h;->f(Lio/flutter/view/d$h;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_2

    :cond_1
    aget-object v2, p2, v1

    :goto_2
    invoke-static {v0, v2}, Lio/flutter/view/d$h;->b(Lio/flutter/view/d$h;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b0(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/flutter/view/d;->x(I)Lio/flutter/view/d$l;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lio/flutter/view/d$l;->M(Lio/flutter/view/d$l;Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V

    sget-object v3, Lio/flutter/view/d$i;->s:Lio/flutter/view/d$i;

    invoke-static {v1, v3}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lio/flutter/view/d$i;->k:Lio/flutter/view/d$i;

    invoke-static {v1, v3}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v1, p0, Lio/flutter/view/d;->m:Lio/flutter/view/d$l;

    :cond_2
    invoke-static {v1}, Lio/flutter/view/d$l;->N(Lio/flutter/view/d$l;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v1}, Lio/flutter/view/d$l;->e(Lio/flutter/view/d$l;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lio/flutter/view/d;->e:Lio/flutter/plugin/platform/n;

    invoke-static {v1}, Lio/flutter/view/d$l;->e(Lio/flutter/view/d$l;)I

    move-result v4

    invoke-interface {v3, v4}, Lio/flutter/plugin/platform/n;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lio/flutter/view/d;->e:Lio/flutter/plugin/platform/n;

    invoke-static {v1}, Lio/flutter/view/d$l;->e(Lio/flutter/view/d$l;)I

    move-result v1

    invoke-interface {v3, v1}, Lio/flutter/plugin/platform/n;->c(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lio/flutter/view/d;->y()Lio/flutter/view/d$l;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eqz p2, :cond_7

    const/16 v3, 0x10

    new-array v3, v3, [F

    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {p0}, Lio/flutter/view/d;->t()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v5, p0, Lio/flutter/view/d;->r:Ljava/lang/Integer;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {p2, v1}, Lio/flutter/view/d$l;->O(Lio/flutter/view/d$l;Z)Z

    invoke-static {p2, v1}, Lio/flutter/view/d$l;->P(Lio/flutter/view/d$l;Z)Z

    :cond_5
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lio/flutter/view/d;->r:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_6
    invoke-static {p2, v3, p1, v2}, Lio/flutter/view/d$l;->Q(Lio/flutter/view/d$l;[FLjava/util/Set;Z)V

    invoke-static {p2, p3}, Lio/flutter/view/d$l;->R(Lio/flutter/view/d$l;Ljava/util/List;)V

    :cond_7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_8
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/flutter/view/d$l;

    iget-object v6, p0, Lio/flutter/view/d;->p:Ljava/util/List;

    invoke-static {v5}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    move-object v4, v5

    goto :goto_1

    :cond_9
    if-nez v4, :cond_a

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_a

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lio/flutter/view/d$l;

    :cond_a
    if-eqz v4, :cond_c

    invoke-static {v4}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p2

    iget v5, p0, Lio/flutter/view/d;->q:I

    if-ne p2, v5, :cond_b

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    iget-object v5, p0, Lio/flutter/view/d;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq p2, v5, :cond_c

    :cond_b
    invoke-static {v4}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p2

    iput p2, p0, Lio/flutter/view/d;->q:I

    invoke-virtual {p0, v4}, Lio/flutter/view/d;->M(Lio/flutter/view/d$l;)V

    :cond_c
    iget-object p2, p0, Lio/flutter/view/d;->p:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/flutter/view/d$l;

    iget-object v4, p0, Lio/flutter/view/d;->p:Ljava/util/List;

    invoke-static {p3}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    iget-object p2, p0, Lio/flutter/view/d;->g:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/flutter/view/d$l;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p0, p3}, Lio/flutter/view/d;->c0(Lio/flutter/view/d$l;)V

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_f
    invoke-virtual {p0, v2}, Lio/flutter/view/d;->U(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/view/d$l;

    invoke-static {p2}, Lio/flutter/view/d$l;->S(Lio/flutter/view/d$l;)Z

    move-result p3

    if-eqz p3, :cond_1c

    invoke-static {p2}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p3

    const/16 v0, 0x1000

    invoke-virtual {p0, p3, v0}, Lio/flutter/view/d;->G(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    invoke-static {p2}, Lio/flutter/view/d$l;->T(Lio/flutter/view/d$l;)F

    move-result v0

    invoke-static {p2}, Lio/flutter/view/d$l;->U(Lio/flutter/view/d$l;)F

    move-result v4

    invoke-static {p2}, Lio/flutter/view/d$l;->U(Lio/flutter/view/d$l;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    const v6, 0x47c35000    # 100000.0f

    if-eqz v5, :cond_12

    const v4, 0x4788b800    # 70000.0f

    cmpl-float v5, v0, v4

    if-lez v5, :cond_11

    move v0, v4

    :cond_11
    move v4, v6

    :cond_12
    invoke-static {p2}, Lio/flutter/view/d$l;->V(Lio/flutter/view/d$l;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_14

    add-float/2addr v4, v6

    const v5, -0x38774800    # -70000.0f

    cmpg-float v7, v0, v5

    if-gez v7, :cond_13

    move v0, v5

    :cond_13
    add-float/2addr v0, v6

    goto :goto_5

    :cond_14
    invoke-static {p2}, Lio/flutter/view/d$l;->V(Lio/flutter/view/d$l;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {p2}, Lio/flutter/view/d$l;->V(Lio/flutter/view/d$l;)F

    move-result v5

    sub-float/2addr v0, v5

    :goto_5
    sget-object v5, Lio/flutter/view/d$g;->j:Lio/flutter/view/d$g;

    invoke-static {p2, v5}, Lio/flutter/view/d$l;->W(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lio/flutter/view/d$g;->k:Lio/flutter/view/d$g;

    invoke-static {p2, v5}, Lio/flutter/view/d$l;->W(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_6

    :cond_15
    sget-object v5, Lio/flutter/view/d$g;->h:Lio/flutter/view/d$g;

    invoke-static {p2, v5}, Lio/flutter/view/d$l;->W(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v5

    if-nez v5, :cond_16

    sget-object v5, Lio/flutter/view/d$g;->i:Lio/flutter/view/d$g;

    invoke-static {p2, v5}, Lio/flutter/view/d$l;->W(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_16
    float-to-int v0, v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    float-to-int v0, v4

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    goto :goto_7

    :cond_17
    :goto_6
    float-to-int v0, v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    float-to-int v0, v4

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    :cond_18
    :goto_7
    invoke-static {p2}, Lio/flutter/view/d$l;->c(Lio/flutter/view/d$l;)I

    move-result v0

    if-lez v0, :cond_1b

    invoke-static {p2}, Lio/flutter/view/d$l;->c(Lio/flutter/view/d$l;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    invoke-static {p2}, Lio/flutter/view/d$l;->X(Lio/flutter/view/d$l;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-static {p2}, Lio/flutter/view/d$l;->Y(Lio/flutter/view/d$l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v2

    :cond_19
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/flutter/view/d$l;

    sget-object v6, Lio/flutter/view/d$i;->s:Lio/flutter/view/d$i;

    invoke-static {v5, v6}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v5

    if-nez v5, :cond_19

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_1a
    invoke-static {p2}, Lio/flutter/view/d$l;->X(Lio/flutter/view/d$l;)I

    move-result v0

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_1b
    invoke-virtual {p0, p3}, Lio/flutter/view/d;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1c
    sget-object p3, Lio/flutter/view/d$i;->u:Lio/flutter/view/d$i;

    invoke-static {p2, p3}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result p3

    if-eqz p3, :cond_1d

    invoke-static {p2}, Lio/flutter/view/d$l;->Z(Lio/flutter/view/d$l;)Z

    move-result p3

    if-eqz p3, :cond_1d

    invoke-static {p2}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p3

    invoke-virtual {p0, p3}, Lio/flutter/view/d;->U(I)V

    :cond_1d
    iget-object p3, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    if-eqz p3, :cond_1e

    invoke-static {p3}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v0

    if-ne p3, v0, :cond_1e

    sget-object p3, Lio/flutter/view/d$i;->h:Lio/flutter/view/d$i;

    invoke-static {p2, p3}, Lio/flutter/view/d$l;->a0(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {p2, p3}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result p3

    if-eqz p3, :cond_1e

    invoke-static {p2}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p3

    const/4 v0, 0x4

    invoke-virtual {p0, p3, v0}, Lio/flutter/view/d;->G(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lio/flutter/view/d$l;->b0(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3}, Lio/flutter/view/d;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1e
    iget-object p3, p0, Lio/flutter/view/d;->m:Lio/flutter/view/d$l;

    if-eqz p3, :cond_20

    invoke-static {p3}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v0

    if-ne p3, v0, :cond_20

    iget-object p3, p0, Lio/flutter/view/d;->n:Lio/flutter/view/d$l;

    if-eqz p3, :cond_1f

    invoke-static {p3}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p3

    iget-object v0, p0, Lio/flutter/view/d;->m:Lio/flutter/view/d$l;

    invoke-static {v0}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v0

    if-eq p3, v0, :cond_20

    :cond_1f
    iget-object p3, p0, Lio/flutter/view/d;->m:Lio/flutter/view/d$l;

    iput-object p3, p0, Lio/flutter/view/d;->n:Lio/flutter/view/d$l;

    invoke-static {p2}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p3

    const/16 v0, 0x8

    invoke-virtual {p0, p3, v0}, Lio/flutter/view/d;->G(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    invoke-virtual {p0, p3}, Lio/flutter/view/d;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_9

    :cond_20
    iget-object p3, p0, Lio/flutter/view/d;->m:Lio/flutter/view/d$l;

    if-nez p3, :cond_21

    iput-object v3, p0, Lio/flutter/view/d;->n:Lio/flutter/view/d$l;

    :cond_21
    :goto_9
    iget-object p3, p0, Lio/flutter/view/d;->m:Lio/flutter/view/d$l;

    if-eqz p3, :cond_10

    invoke-static {p3}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v0

    if-ne p3, v0, :cond_10

    sget-object p3, Lio/flutter/view/d$i;->j:Lio/flutter/view/d$i;

    invoke-static {p2, p3}, Lio/flutter/view/d$l;->a0(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p2, p3}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result p3

    if-eqz p3, :cond_10

    iget-object p3, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    if-eqz p3, :cond_22

    invoke-static {p3}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p3

    iget-object v0, p0, Lio/flutter/view/d;->m:Lio/flutter/view/d$l;

    invoke-static {v0}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v0

    if-ne p3, v0, :cond_10

    :cond_22
    invoke-static {p2}, Lio/flutter/view/d$l;->c0(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    if-eqz p3, :cond_23

    invoke-static {p2}, Lio/flutter/view/d$l;->c0(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object p3

    goto :goto_a

    :cond_23
    move-object p3, v0

    :goto_a
    invoke-static {p2}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-static {p2}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object v0

    :cond_24
    invoke-static {p2}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v4

    invoke-virtual {p0, v4, p3, v0}, Lio/flutter/view/d;->s(ILjava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    if-eqz p3, :cond_25

    invoke-virtual {p0, p3}, Lio/flutter/view/d;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_25
    invoke-static {p2}, Lio/flutter/view/d$l;->d0(Lio/flutter/view/d$l;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/d$l;->j(Lio/flutter/view/d$l;)I

    move-result v4

    if-ne p3, v4, :cond_26

    invoke-static {p2}, Lio/flutter/view/d$l;->e0(Lio/flutter/view/d$l;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result v4

    if-eq p3, v4, :cond_10

    :cond_26
    invoke-static {p2}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p3

    const/16 v4, 0x2000

    invoke-virtual {p0, p3, v4}, Lio/flutter/view/d;->G(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lio/flutter/view/d$l;->j(Lio/flutter/view/d$l;)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-static {p2}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    invoke-virtual {p0, p3}, Lio/flutter/view/d;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_4

    :cond_27
    return-void
.end method

.method public final c0(Lio/flutter/view/d$l;)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/flutter/view/d$l;->v(Lio/flutter/view/d$l;Lio/flutter/view/d$l;)Lio/flutter/view/d$l;

    invoke-static {p1}, Lio/flutter/view/d$l;->e(Lio/flutter/view/d$l;)I

    move-result v1

    const/high16 v2, 0x10000

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lio/flutter/view/d;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lio/flutter/view/d;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lio/flutter/view/AccessibilityViewEmbedder;->platformViewOfNode(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lio/flutter/view/d;->e:Lio/flutter/plugin/platform/n;

    invoke-static {p1}, Lio/flutter/view/d$l;->e(Lio/flutter/view/d$l;)I

    move-result v5

    invoke-interface {v4, v5}, Lio/flutter/plugin/platform/n;->c(I)Landroid/view/View;

    move-result-object v4

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lio/flutter/view/d;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lio/flutter/view/d;->R(II)V

    iput-object v0, p0, Lio/flutter/view/d;->j:Ljava/lang/Integer;

    :cond_0
    invoke-static {p1}, Lio/flutter/view/d$l;->e(Lio/flutter/view/d$l;)I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lio/flutter/view/d;->e:Lio/flutter/plugin/platform/n;

    invoke-static {p1}, Lio/flutter/view/d$l;->e(Lio/flutter/view/d$l;)I

    move-result v3

    invoke-interface {v1, v3}, Lio/flutter/plugin/platform/n;->c(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    iget-object v1, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    if-ne v1, p1, :cond_2

    invoke-static {v1}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lio/flutter/view/d;->R(II)V

    iput-object v0, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    :cond_2
    iget-object v1, p0, Lio/flutter/view/d;->m:Lio/flutter/view/d$l;

    if-ne v1, p1, :cond_3

    iput-object v0, p0, Lio/flutter/view/d;->m:Lio/flutter/view/d$l;

    :cond_3
    iget-object v1, p0, Lio/flutter/view/d;->o:Lio/flutter/view/d$l;

    if-ne v1, p1, :cond_4

    iput-object v0, p0, Lio/flutter/view/d;->o:Lio/flutter/view/d$l;

    :cond_4
    return-void
.end method

.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/flutter/view/d;->W(Z)V

    const/high16 v1, 0x10000

    if-lt p1, v1, :cond_0

    iget-object v0, p0, Lio/flutter/view/d;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/flutter/view/d;->H(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lio/flutter/view/d;->g:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {p1, v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    return-object p1

    :cond_2
    iget-object v4, p0, Lio/flutter/view/d;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/flutter/view/d$l;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    return-object v5

    :cond_3
    invoke-static {v4}, Lio/flutter/view/d$l;->e(Lio/flutter/view/d$l;)I

    move-result v6

    if-eq v6, v2, :cond_5

    iget-object v6, p0, Lio/flutter/view/d;->e:Lio/flutter/plugin/platform/n;

    invoke-static {v4}, Lio/flutter/view/d$l;->e(Lio/flutter/view/d$l;)I

    move-result v7

    invoke-interface {v6, v7}, Lio/flutter/plugin/platform/n;->b(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object p1, p0, Lio/flutter/view/d;->e:Lio/flutter/plugin/platform/n;

    invoke-static {v4}, Lio/flutter/view/d$l;->e(Lio/flutter/view/d$l;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/platform/n;->c(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v5

    :cond_4
    invoke-static {v4}, Lio/flutter/view/d$l;->f(Lio/flutter/view/d$l;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/d;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-static {v4}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Lio/flutter/view/AccessibilityViewEmbedder;->getRootNode(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object v5, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {p0, v5, p1}, Lio/flutter/view/d;->I(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    invoke-virtual {p0, v4}, Lio/flutter/view/d;->B(Lio/flutter/view/d$l;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    invoke-static {v4}, Lio/flutter/view/d$l;->g(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {v4}, Lio/flutter/view/d$l;->g(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    :cond_6
    iget-object v6, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    const-string v6, "android.view.View"

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {v5, v6, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    invoke-static {v4}, Lio/flutter/view/d$l;->h(Lio/flutter/view/d$l;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    iget-object v6, p0, Lio/flutter/view/d;->m:Lio/flutter/view/d$l;

    if-eqz v6, :cond_8

    invoke-static {v6}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v6

    if-ne v6, p1, :cond_7

    move v6, v0

    goto :goto_0

    :cond_7
    move v6, v3

    :goto_0
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    :cond_8
    iget-object v6, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    if-eqz v6, :cond_a

    invoke-static {v6}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v6

    if-ne v6, p1, :cond_9

    move v6, v0

    goto :goto_1

    :cond_9
    move v6, v3

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    :cond_a
    sget-object v6, Lio/flutter/view/d$i;->j:Lio/flutter/view/d$i;

    invoke-static {v4, v6}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v7

    if-eqz v7, :cond_13

    sget-object v7, Lio/flutter/view/d$i;->p:Lio/flutter/view/d$i;

    invoke-static {v4, v7}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    sget-object v7, Lio/flutter/view/d$i;->z:Lio/flutter/view/d$i;

    invoke-static {v4, v7}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "android.widget.EditText"

    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_b
    invoke-static {v4, v7}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v7

    xor-int/2addr v7, v0

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    invoke-static {v4}, Lio/flutter/view/d$l;->j(Lio/flutter/view/d$l;)I

    move-result v7

    if-eq v7, v2, :cond_c

    invoke-static {v4}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result v7

    if-eq v7, v2, :cond_c

    invoke-static {v4}, Lio/flutter/view/d$l;->j(Lio/flutter/view/d$l;)I

    move-result v7

    invoke-static {v4}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    :cond_c
    iget-object v7, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    if-eqz v7, :cond_d

    invoke-static {v7}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v7

    if-ne v7, p1, :cond_d

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    :cond_d
    sget-object v7, Lio/flutter/view/d$g;->o:Lio/flutter/view/d$g;

    invoke-static {v4, v7}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v7

    const/16 v8, 0x100

    if-eqz v7, :cond_e

    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    move v7, v0

    goto :goto_2

    :cond_e
    move v7, v3

    :goto_2
    sget-object v9, Lio/flutter/view/d$g;->p:Lio/flutter/view/d$g;

    invoke-static {v4, v9}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v9

    const/16 v10, 0x200

    if-eqz v9, :cond_f

    invoke-virtual {v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    move v7, v0

    :cond_f
    sget-object v9, Lio/flutter/view/d$g;->y:Lio/flutter/view/d$g;

    invoke-static {v4, v9}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v7, v7, 0x2

    :cond_10
    sget-object v8, Lio/flutter/view/d$g;->z:Lio/flutter/view/d$g;

    invoke-static {v4, v8}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v7, v7, 0x2

    :cond_11
    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    invoke-static {v4}, Lio/flutter/view/d$l;->q(Lio/flutter/view/d$l;)I

    move-result v7

    if-ltz v7, :cond_13

    invoke-static {v4}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_12

    move v7, v3

    goto :goto_3

    :cond_12
    invoke-static {v4}, Lio/flutter/view/d$l;->r(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    :goto_3
    invoke-static {v4}, Lio/flutter/view/d$l;->t(Lio/flutter/view/d$l;)I

    invoke-static {v4}, Lio/flutter/view/d$l;->q(Lio/flutter/view/d$l;)I

    invoke-static {v4}, Lio/flutter/view/d$l;->t(Lio/flutter/view/d$l;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v4}, Lio/flutter/view/d$l;->q(Lio/flutter/view/d$l;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    :cond_13
    sget-object v7, Lio/flutter/view/d$g;->q:Lio/flutter/view/d$g;

    invoke-static {v4, v7}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/high16 v7, 0x20000

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_14
    sget-object v7, Lio/flutter/view/d$g;->r:Lio/flutter/view/d$g;

    invoke-static {v4, v7}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/16 v7, 0x4000

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_15
    sget-object v7, Lio/flutter/view/d$g;->s:Lio/flutter/view/d$g;

    invoke-static {v4, v7}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_16
    sget-object v1, Lio/flutter/view/d$g;->t:Lio/flutter/view/d$g;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v1

    if-eqz v1, :cond_17

    const v1, 0x8000

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_17
    sget-object v1, Lio/flutter/view/d$g;->A:Lio/flutter/view/d$g;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/high16 v1, 0x200000

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_18
    sget-object v1, Lio/flutter/view/d$i;->i:Lio/flutter/view/d$i;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v1

    if-nez v1, :cond_19

    sget-object v1, Lio/flutter/view/d$i;->B:Lio/flutter/view/d$i;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    const-string v1, "android.widget.Button"

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_1a
    sget-object v1, Lio/flutter/view/d$i;->t:Lio/flutter/view/d$i;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "android.widget.ImageView"

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_1b
    sget-object v1, Lio/flutter/view/d$g;->x:Lio/flutter/view/d$g;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    const/high16 v1, 0x100000

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1c
    invoke-static {v4}, Lio/flutter/view/d$l;->u(Lio/flutter/view/d$l;)Lio/flutter/view/d$l;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-static {v4}, Lio/flutter/view/d$l;->u(Lio/flutter/view/d$l;)Lio/flutter/view/d$l;

    move-result-object v7

    invoke-static {v7}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v7

    invoke-virtual {v5, v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    goto :goto_4

    :cond_1d
    iget-object v1, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    :goto_4
    invoke-static {v4}, Lio/flutter/view/d$l;->w(Lio/flutter/view/d$l;)I

    move-result v1

    if-eq v1, v2, :cond_1e

    iget-object v1, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-static {v4}, Lio/flutter/view/d$l;->w(Lio/flutter/view/d$l;)I

    move-result v7

    invoke-virtual {v5, v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    :cond_1e
    invoke-static {v4}, Lio/flutter/view/d$l;->f(Lio/flutter/view/d$l;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v4}, Lio/flutter/view/d$l;->u(Lio/flutter/view/d$l;)Lio/flutter/view/d$l;

    move-result-object v7

    if-eqz v7, :cond_1f

    invoke-static {v4}, Lio/flutter/view/d$l;->u(Lio/flutter/view/d$l;)Lio/flutter/view/d$l;

    move-result-object v7

    invoke-static {v7}, Lio/flutter/view/d$l;->f(Lio/flutter/view/d$l;)Landroid/graphics/Rect;

    move-result-object v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v9, v7, Landroid/graphics/Rect;->left:I

    neg-int v9, v9

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_1f
    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    :goto_5
    invoke-virtual {p0, v1}, Lio/flutter/view/d;->v(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    sget-object v1, Lio/flutter/view/d$i;->l:Lio/flutter/view/d$i;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lio/flutter/view/d$i;->m:Lio/flutter/view/d$i;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_6

    :cond_20
    move v1, v3

    goto :goto_7

    :cond_21
    :goto_6
    move v1, v0

    :goto_7
    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    sget-object v1, Lio/flutter/view/d$g;->f:Lio/flutter/view/d$g;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v1

    const/16 v7, 0x10

    if-eqz v1, :cond_23

    invoke-static {v4}, Lio/flutter/view/d$l;->x(Lio/flutter/view/d$l;)Lio/flutter/view/d$h;

    move-result-object v1

    if-eqz v1, :cond_22

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {v4}, Lio/flutter/view/d$l;->x(Lio/flutter/view/d$l;)Lio/flutter/view/d$h;

    move-result-object v8

    invoke-static {v8}, Lio/flutter/view/d$h;->a(Lio/flutter/view/d$h;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto :goto_8

    :cond_22
    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto :goto_8

    :cond_23
    sget-object v1, Lio/flutter/view/d$i;->C:Lio/flutter/view/d$i;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    :cond_24
    :goto_8
    sget-object v1, Lio/flutter/view/d$g;->g:Lio/flutter/view/d$g;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {v4}, Lio/flutter/view/d$l;->y(Lio/flutter/view/d$l;)Lio/flutter/view/d$h;

    move-result-object v1

    const/16 v7, 0x20

    if-eqz v1, :cond_25

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {v4}, Lio/flutter/view/d$l;->y(Lio/flutter/view/d$l;)Lio/flutter/view/d$h;

    move-result-object v8

    invoke-static {v8}, Lio/flutter/view/d$h;->a(Lio/flutter/view/d$h;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_9

    :cond_25
    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    :cond_26
    :goto_9
    sget-object v1, Lio/flutter/view/d$g;->h:Lio/flutter/view/d$g;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v7

    const/16 v8, 0x2000

    const/16 v9, 0x1000

    if-nez v7, :cond_27

    sget-object v7, Lio/flutter/view/d$g;->j:Lio/flutter/view/d$g;

    invoke-static {v4, v7}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v7

    if-nez v7, :cond_27

    sget-object v7, Lio/flutter/view/d$g;->i:Lio/flutter/view/d$g;

    invoke-static {v4, v7}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v7

    if-nez v7, :cond_27

    sget-object v7, Lio/flutter/view/d$g;->k:Lio/flutter/view/d$g;

    invoke-static {v4, v7}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v7

    if-eqz v7, :cond_30

    :cond_27
    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    sget-object v7, Lio/flutter/view/d$i;->x:Lio/flutter/view/d$i;

    invoke-static {v4, v7}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v7

    if-nez v7, :cond_2a

    sget-object v7, Lio/flutter/view/d$g;->i:Lio/flutter/view/d$g;

    invoke-static {v4, v7}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v7

    if-eqz v7, :cond_28

    goto :goto_a

    :cond_28
    invoke-virtual {p0, v4}, Lio/flutter/view/d;->Z(Lio/flutter/view/d$l;)Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-static {v4}, Lio/flutter/view/d$l;->c(Lio/flutter/view/d$l;)I

    move-result v7

    invoke-static {v7, v3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_b

    :cond_29
    const-string v7, "android.widget.ScrollView"

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_2a
    :goto_a
    invoke-virtual {p0, v4}, Lio/flutter/view/d;->Z(Lio/flutter/view/d$l;)Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-static {v4}, Lio/flutter/view/d$l;->c(Lio/flutter/view/d$l;)I

    move-result v7

    invoke-static {v3, v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_b

    :cond_2b
    const-string v7, "android.widget.HorizontalScrollView"

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_2c
    :goto_b
    invoke-static {v4, v1}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v1

    if-nez v1, :cond_2d

    sget-object v1, Lio/flutter/view/d$g;->j:Lio/flutter/view/d$g;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_2d
    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2e
    sget-object v1, Lio/flutter/view/d$g;->i:Lio/flutter/view/d$g;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v1

    if-nez v1, :cond_2f

    sget-object v1, Lio/flutter/view/d$g;->k:Lio/flutter/view/d$g;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2f
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_30
    sget-object v1, Lio/flutter/view/d$g;->l:Lio/flutter/view/d$g;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v7

    if-nez v7, :cond_31

    sget-object v7, Lio/flutter/view/d$g;->m:Lio/flutter/view/d$g;

    invoke-static {v4, v7}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v7

    if-eqz v7, :cond_33

    :cond_31
    const-string v7, "android.widget.SeekBar"

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_32
    sget-object v1, Lio/flutter/view/d$g;->m:Lio/flutter/view/d$g;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_33
    sget-object v1, Lio/flutter/view/d$i;->u:Lio/flutter/view/d$i;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    :cond_34
    invoke-static {v4, v6}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {v4}, Lio/flutter/view/d$l;->z(Lio/flutter/view/d$l;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Lio/flutter/view/d$l;->A(Lio/flutter/view/d$l;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_35
    sget-object v1, Lio/flutter/view/d$i;->q:Lio/flutter/view/d$i;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-static {v4}, Lio/flutter/view/d$l;->B(Lio/flutter/view/d$l;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_36
    :goto_c
    invoke-static {v4}, Lio/flutter/view/d$l;->C(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-static {v4}, Lio/flutter/view/d$l;->C(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTooltipText(Ljava/lang/CharSequence;)V

    :cond_37
    sget-object v1, Lio/flutter/view/d$i;->f:Lio/flutter/view/d$i;

    invoke-static {v4, v1}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v1

    sget-object v6, Lio/flutter/view/d$i;->v:Lio/flutter/view/d$i;

    invoke-static {v4, v6}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v6

    if-nez v1, :cond_39

    if-eqz v6, :cond_38

    goto :goto_d

    :cond_38
    move v0, v3

    :cond_39
    :goto_d
    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    if-eqz v1, :cond_3b

    sget-object v0, Lio/flutter/view/d$i;->g:Lio/flutter/view/d$i;

    invoke-static {v4, v0}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    sget-object v0, Lio/flutter/view/d$i;->n:Lio/flutter/view/d$i;

    invoke-static {v4, v0}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "android.widget.RadioButton"

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_3a
    const-string v0, "android.widget.CheckBox"

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_3b
    if-eqz v6, :cond_3c

    sget-object v0, Lio/flutter/view/d$i;->w:Lio/flutter/view/d$i;

    invoke-static {v4, v0}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const-string v0, "android.widget.Switch"

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_3c
    :goto_e
    sget-object v0, Lio/flutter/view/d$i;->h:Lio/flutter/view/d$i;

    invoke-static {v4, v0}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    sget-object v0, Lio/flutter/view/d$i;->o:Lio/flutter/view/d$i;

    invoke-static {v4, v0}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    iget-object v0, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    if-eqz v0, :cond_3d

    invoke-static {v0}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v0

    if-ne v0, p1, :cond_3d

    const/16 p1, 0x80

    invoke-virtual {v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_f

    :cond_3d
    const/16 p1, 0x40

    invoke-virtual {v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_f
    invoke-static {v4}, Lio/flutter/view/d$l;->D(Lio/flutter/view/d$l;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3e

    invoke-static {v4}, Lio/flutter/view/d$l;->D(Lio/flutter/view/d$l;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/d$h;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {v0}, Lio/flutter/view/d$h;->c(Lio/flutter/view/d$h;)I

    move-result v3

    invoke-static {v0}, Lio/flutter/view/d$h;->e(Lio/flutter/view/d$h;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_10

    :cond_3e
    invoke-static {v4}, Lio/flutter/view/d$l;->E(Lio/flutter/view/d$l;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/d$l;

    sget-object v1, Lio/flutter/view/d$i;->s:Lio/flutter/view/d$i;

    invoke-static {v0, v1}, Lio/flutter/view/d$l;->i(Lio/flutter/view/d$l;Lio/flutter/view/d$i;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_11

    :cond_3f
    invoke-static {v0}, Lio/flutter/view/d$l;->e(Lio/flutter/view/d$l;)I

    move-result v1

    if-eq v1, v2, :cond_40

    iget-object v1, p0, Lio/flutter/view/d;->e:Lio/flutter/plugin/platform/n;

    invoke-static {v0}, Lio/flutter/view/d$l;->e(Lio/flutter/view/d$l;)I

    move-result v3

    invoke-interface {v1, v3}, Lio/flutter/plugin/platform/n;->c(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lio/flutter/view/d;->e:Lio/flutter/plugin/platform/n;

    invoke-static {v0}, Lio/flutter/view/d$l;->e(Lio/flutter/view/d$l;)I

    move-result v4

    invoke-interface {v3, v4}, Lio/flutter/plugin/platform/n;->b(I)Z

    move-result v3

    if-nez v3, :cond_40

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    goto :goto_11

    :cond_40
    iget-object v1, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-static {v0}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    goto :goto_11

    :cond_41
    return-object v5
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/flutter/view/d;->m:Lio/flutter/view/d$l;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/d;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lio/flutter/view/d;->k:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/d;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/d;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lio/flutter/view/d;->j:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/d;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 7

    const/4 v0, 0x0

    const/high16 v1, 0x10000

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lio/flutter/view/d;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v1, p1, p2, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p3, 0x80

    if-ne p2, p3, :cond_0

    iput-object v0, p0, Lio/flutter/view/d;->j:Ljava/lang/Integer;

    :cond_0
    return p1

    :cond_1
    iget-object v2, p0, Lio/flutter/view/d;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/view/d$l;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return v3

    :cond_2
    const/4 v4, 0x4

    const/4 v5, 0x1

    sparse-switch p2, :sswitch_data_0

    sget p3, Lio/flutter/view/d;->B:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lio/flutter/view/d;->h:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/view/d$h;

    if-eqz p2, :cond_3

    iget-object p3, p0, Lio/flutter/view/d;->b:LX2/a;

    sget-object v0, Lio/flutter/view/d$g;->w:Lio/flutter/view/d$g;

    invoke-static {p2}, Lio/flutter/view/d$h;->g(Lio/flutter/view/d$h;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, v0, p2}, LX2/a;->c(ILio/flutter/view/d$g;Ljava/lang/Object;)V

    return v5

    :cond_3
    return v3

    :sswitch_0
    iget-object p2, p0, Lio/flutter/view/d;->b:LX2/a;

    sget-object p3, Lio/flutter/view/d$g;->n:Lio/flutter/view/d$g;

    invoke-virtual {p2, p1, p3}, LX2/a;->b(ILio/flutter/view/d$g;)V

    return v5

    :sswitch_1
    invoke-virtual {p0, v2, p1, p3}, Lio/flutter/view/d;->O(Lio/flutter/view/d$l;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :sswitch_2
    iget-object p2, p0, Lio/flutter/view/d;->b:LX2/a;

    sget-object p3, Lio/flutter/view/d$g;->x:Lio/flutter/view/d$g;

    invoke-virtual {p2, p1, p3}, LX2/a;->b(ILio/flutter/view/d$g;)V

    return v5

    :sswitch_3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "extent"

    const-string v1, "base"

    if-eqz p3, :cond_4

    const-string v3, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lio/flutter/view/d$l;->l(Lio/flutter/view/d$l;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p3, p0, Lio/flutter/view/d;->b:LX2/a;

    sget-object v2, Lio/flutter/view/d$g;->q:Lio/flutter/view/d$g;

    invoke-virtual {p3, p1, v2, p2}, LX2/a;->c(ILio/flutter/view/d$g;Ljava/lang/Object;)V

    iget-object p3, p0, Lio/flutter/view/d;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/view/d$l;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p3}, Lio/flutter/view/d$l;->k(Lio/flutter/view/d$l;I)I

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/d$l;->m(Lio/flutter/view/d$l;I)I

    return v5

    :sswitch_4
    iget-object p2, p0, Lio/flutter/view/d;->b:LX2/a;

    sget-object p3, Lio/flutter/view/d$g;->s:Lio/flutter/view/d$g;

    invoke-virtual {p2, p1, p3}, LX2/a;->b(ILio/flutter/view/d$g;)V

    return v5

    :sswitch_5
    iget-object p2, p0, Lio/flutter/view/d;->b:LX2/a;

    sget-object p3, Lio/flutter/view/d$g;->t:Lio/flutter/view/d$g;

    invoke-virtual {p2, p1, p3}, LX2/a;->b(ILio/flutter/view/d$g;)V

    return v5

    :sswitch_6
    iget-object p2, p0, Lio/flutter/view/d;->b:LX2/a;

    sget-object p3, Lio/flutter/view/d$g;->r:Lio/flutter/view/d$g;

    invoke-virtual {p2, p1, p3}, LX2/a;->b(ILio/flutter/view/d$g;)V

    return v5

    :sswitch_7
    sget-object p2, Lio/flutter/view/d$g;->k:Lio/flutter/view/d$g;

    invoke-static {v2, p2}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lio/flutter/view/d;->b:LX2/a;

    invoke-virtual {p3, p1, p2}, LX2/a;->b(ILio/flutter/view/d$g;)V

    goto :goto_1

    :cond_5
    sget-object p2, Lio/flutter/view/d$g;->i:Lio/flutter/view/d$g;

    invoke-static {v2, p2}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lio/flutter/view/d;->b:LX2/a;

    invoke-virtual {p3, p1, p2}, LX2/a;->b(ILio/flutter/view/d$g;)V

    goto :goto_1

    :cond_6
    sget-object p2, Lio/flutter/view/d$g;->m:Lio/flutter/view/d$g;

    invoke-static {v2, p2}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-static {v2}, Lio/flutter/view/d$l;->J(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lio/flutter/view/d$l;->s(Lio/flutter/view/d$l;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lio/flutter/view/d$l;->K(Lio/flutter/view/d$l;)Ljava/util/List;

    move-result-object p3

    invoke-static {v2, p3}, Lio/flutter/view/d$l;->H(Lio/flutter/view/d$l;Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0, p1, v4}, Lio/flutter/view/d;->R(II)V

    iget-object p3, p0, Lio/flutter/view/d;->b:LX2/a;

    invoke-virtual {p3, p1, p2}, LX2/a;->b(ILio/flutter/view/d$g;)V

    :goto_1
    return v5

    :cond_7
    return v3

    :sswitch_8
    sget-object p2, Lio/flutter/view/d$g;->j:Lio/flutter/view/d$g;

    invoke-static {v2, p2}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lio/flutter/view/d;->b:LX2/a;

    invoke-virtual {p3, p1, p2}, LX2/a;->b(ILio/flutter/view/d$g;)V

    goto :goto_2

    :cond_8
    sget-object p2, Lio/flutter/view/d$g;->h:Lio/flutter/view/d$g;

    invoke-static {v2, p2}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lio/flutter/view/d;->b:LX2/a;

    invoke-virtual {p3, p1, p2}, LX2/a;->b(ILio/flutter/view/d$g;)V

    goto :goto_2

    :cond_9
    sget-object p2, Lio/flutter/view/d$g;->l:Lio/flutter/view/d$g;

    invoke-static {v2, p2}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-static {v2}, Lio/flutter/view/d$l;->G(Lio/flutter/view/d$l;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lio/flutter/view/d$l;->s(Lio/flutter/view/d$l;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lio/flutter/view/d$l;->I(Lio/flutter/view/d$l;)Ljava/util/List;

    move-result-object p3

    invoke-static {v2, p3}, Lio/flutter/view/d$l;->H(Lio/flutter/view/d$l;Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0, p1, v4}, Lio/flutter/view/d;->R(II)V

    iget-object p3, p0, Lio/flutter/view/d;->b:LX2/a;

    invoke-virtual {p3, p1, p2}, LX2/a;->b(ILio/flutter/view/d$g;)V

    :goto_2
    return v5

    :cond_a
    return v3

    :sswitch_9
    invoke-virtual {p0, v2, p1, p3, v3}, Lio/flutter/view/d;->N(Lio/flutter/view/d$l;ILandroid/os/Bundle;Z)Z

    move-result p1

    return p1

    :sswitch_a
    invoke-virtual {p0, v2, p1, p3, v5}, Lio/flutter/view/d;->N(Lio/flutter/view/d$l;ILandroid/os/Bundle;Z)Z

    move-result p1

    return p1

    :sswitch_b
    iget-object p2, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    if-eqz p2, :cond_b

    invoke-static {p2}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p2

    if-ne p2, p1, :cond_b

    iput-object v0, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    :cond_b
    iget-object p2, p0, Lio/flutter/view/d;->j:Ljava/lang/Integer;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_c

    iput-object v0, p0, Lio/flutter/view/d;->j:Ljava/lang/Integer;

    :cond_c
    iget-object p2, p0, Lio/flutter/view/d;->b:LX2/a;

    sget-object p3, Lio/flutter/view/d$g;->v:Lio/flutter/view/d$g;

    invoke-virtual {p2, p1, p3}, LX2/a;->b(ILio/flutter/view/d$g;)V

    invoke-virtual {p0, p1, v1}, Lio/flutter/view/d;->R(II)V

    return v5

    :sswitch_c
    iget-object p2, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    if-nez p2, :cond_d

    iget-object p2, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_d
    iput-object v2, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    iget-object p2, p0, Lio/flutter/view/d;->b:LX2/a;

    sget-object p3, Lio/flutter/view/d$g;->u:Lio/flutter/view/d$g;

    invoke-virtual {p2, p1, p3}, LX2/a;->b(ILio/flutter/view/d$g;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "type"

    const-string v0, "didGainFocus"

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "nodeId"

    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lio/flutter/view/d;->b:LX2/a;

    iget-object p3, p3, LX2/a;->a:LY2/a;

    invoke-virtual {p3, p2}, LY2/a;->c(Ljava/lang/Object;)V

    const p2, 0x8000

    invoke-virtual {p0, p1, p2}, Lio/flutter/view/d;->R(II)V

    sget-object p2, Lio/flutter/view/d$g;->l:Lio/flutter/view/d$g;

    invoke-static {v2, p2}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result p2

    if-nez p2, :cond_e

    sget-object p2, Lio/flutter/view/d$g;->m:Lio/flutter/view/d$g;

    invoke-static {v2, p2}, Lio/flutter/view/d$l;->p(Lio/flutter/view/d$l;Lio/flutter/view/d$g;)Z

    move-result p2

    if-eqz p2, :cond_f

    :cond_e
    invoke-virtual {p0, p1, v4}, Lio/flutter/view/d;->R(II)V

    :cond_f
    return v5

    :sswitch_d
    iget-object p2, p0, Lio/flutter/view/d;->b:LX2/a;

    sget-object p3, Lio/flutter/view/d$g;->g:Lio/flutter/view/d$g;

    invoke-virtual {p2, p1, p3}, LX2/a;->b(ILio/flutter/view/d$g;)V

    return v5

    :sswitch_e
    iget-object p2, p0, Lio/flutter/view/d;->b:LX2/a;

    sget-object p3, Lio/flutter/view/d$g;->f:Lio/flutter/view/d$g;

    invoke-virtual {p2, p1, p3}, LX2/a;->b(ILio/flutter/view/d$g;)V

    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_e
        0x20 -> :sswitch_d
        0x40 -> :sswitch_c
        0x80 -> :sswitch_b
        0x100 -> :sswitch_a
        0x200 -> :sswitch_9
        0x1000 -> :sswitch_8
        0x2000 -> :sswitch_7
        0x4000 -> :sswitch_6
        0x8000 -> :sswitch_5
        0x10000 -> :sswitch_4
        0x20000 -> :sswitch_3
        0x100000 -> :sswitch_2
        0x200000 -> :sswitch_1
        0x1020036 -> :sswitch_0
    .end sparse-switch
.end method

.method public final s(ILjava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 5

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lio/flutter/view/d;->G(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-lt v1, v0, :cond_4

    if-lt v2, v0, :cond_4

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    return-object p1
.end method

.method public final t()Z
    .locals 3

    iget-object v0, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg3/h;->e(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public u(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lio/flutter/view/d;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lio/flutter/view/d;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {p2, p1, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->getRecordFlutterId(Landroid/view/View;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-eq p2, p3, :cond_5

    const/16 p3, 0x80

    if-eq p2, p3, :cond_4

    const p3, 0x8000

    if-eq p2, p3, :cond_3

    const/high16 p1, 0x10000

    if-eq p2, p1, :cond_2

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lio/flutter/view/d;->k:Ljava/lang/Integer;

    iput-object v0, p0, Lio/flutter/view/d;->j:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lio/flutter/view/d;->j:Ljava/lang/Integer;

    iput-object v0, p0, Lio/flutter/view/d;->i:Lio/flutter/view/d$l;

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lio/flutter/view/d;->o:Lio/flutter/view/d$l;

    goto :goto_0

    :cond_5
    iput-object p1, p0, Lio/flutter/view/d;->k:Ljava/lang/Integer;

    iput-object v0, p0, Lio/flutter/view/d;->m:Lio/flutter/view/d$l;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final v(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object v1, p0, Lio/flutter/view/d;->a:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method public final w(I)Lio/flutter/view/d$h;
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/d$h;

    if-nez v0, :cond_0

    new-instance v0, Lio/flutter/view/d$h;

    invoke-direct {v0}, Lio/flutter/view/d$h;-><init>()V

    invoke-static {v0, p1}, Lio/flutter/view/d$h;->h(Lio/flutter/view/d$h;I)I

    sget v1, Lio/flutter/view/d;->B:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lio/flutter/view/d$h;->d(Lio/flutter/view/d$h;I)I

    iget-object v1, p0, Lio/flutter/view/d;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final x(I)Lio/flutter/view/d$l;
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/d$l;

    if-nez v0, :cond_0

    new-instance v0, Lio/flutter/view/d$l;

    invoke-direct {v0, p0}, Lio/flutter/view/d$l;-><init>(Lio/flutter/view/d;)V

    invoke-static {v0, p1}, Lio/flutter/view/d$l;->b(Lio/flutter/view/d$l;I)I

    iget-object v1, p0, Lio/flutter/view/d;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final y()Lio/flutter/view/d$l;
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d;->g:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/d$l;

    return-object v0
.end method

.method public final z(FFZ)V
    .locals 3

    iget-object v0, p0, Lio/flutter/view/d;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lio/flutter/view/d;->y()Lio/flutter/view/d$l;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x0

    const/4 p2, 0x2

    aput p1, v1, p2

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x3

    aput p1, v1, p2

    invoke-static {v0, v1, p3}, Lio/flutter/view/d$l;->L(Lio/flutter/view/d$l;[FZ)Lio/flutter/view/d$l;

    move-result-object p1

    iget-object p2, p0, Lio/flutter/view/d;->o:Lio/flutter/view/d$l;

    if-eq p1, p2, :cond_3

    if-eqz p1, :cond_1

    invoke-static {p1}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p2

    const/16 p3, 0x80

    invoke-virtual {p0, p2, p3}, Lio/flutter/view/d;->R(II)V

    :cond_1
    iget-object p2, p0, Lio/flutter/view/d;->o:Lio/flutter/view/d$l;

    if-eqz p2, :cond_2

    invoke-static {p2}, Lio/flutter/view/d$l;->a(Lio/flutter/view/d$l;)I

    move-result p2

    const/16 p3, 0x100

    invoke-virtual {p0, p2, p3}, Lio/flutter/view/d;->R(II)V

    :cond_2
    iput-object p1, p0, Lio/flutter/view/d;->o:Lio/flutter/view/d$l;

    :cond_3
    return-void
.end method
