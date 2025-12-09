.class public abstract Lo1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/c$a;,
        Lo1/c$b;,
        Lo1/c$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lo1/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo1/c$c;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo1/c$c;)V
    .locals 1

    new-instance v0, Lo1/d;

    invoke-direct {v0}, Lo1/d;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lo1/d;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo1/c$c;)V

    return-void
.end method
