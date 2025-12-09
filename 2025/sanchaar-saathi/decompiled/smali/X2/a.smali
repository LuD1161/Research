.class public LX2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LX2/a$b;
    }
.end annotation


# instance fields
.field public final a:LY2/a;

.field public final b:Lio/flutter/embedding/engine/FlutterJNI;

.field public c:LX2/a$b;

.field public final d:LY2/a$d;


# direct methods
.method public constructor <init>(LP2/a;Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LX2/a$a;

    invoke-direct {v0, p0}, LX2/a$a;-><init>(LX2/a;)V

    iput-object v0, p0, LX2/a;->d:LY2/a$d;

    new-instance v1, LY2/a;

    const-string v2, "flutter/accessibility"

    sget-object v3, LY2/o;->a:LY2/o;

    invoke-direct {v1, p1, v2, v3}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;)V

    iput-object v1, p0, LX2/a;->a:LY2/a;

    invoke-virtual {v1, v0}, LY2/a;->e(LY2/a$d;)V

    iput-object p2, p0, LX2/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    return-void
.end method

.method public static synthetic a(LX2/a;)LX2/a$b;
    .locals 0

    iget-object p0, p0, LX2/a;->c:LX2/a$b;

    return-object p0
.end method


# virtual methods
.method public b(ILio/flutter/view/d$g;)V
    .locals 1

    iget-object v0, p0, LX2/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/d$g;)V

    return-void
.end method

.method public c(ILio/flutter/view/d$g;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LX2/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/d$g;Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, LX2/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, LX2/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, LX2/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityFeatures(I)V

    return-void
.end method

.method public g(LX2/a$b;)V
    .locals 1

    iput-object p1, p0, LX2/a;->c:LX2/a$b;

    iget-object v0, p0, LX2/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityDelegate(Lio/flutter/embedding/engine/FlutterJNI$a;)V

    return-void
.end method
