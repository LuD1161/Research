.class public LT/n$b;
.super LT/n$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(LT/n;)V
    .locals 0

    invoke-direct {p0, p1}, LT/n$a;-><init>(LT/n;)V

    return-void
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, LT/n$a;->a:LT/n;

    invoke-static {p2}, LT/m;->C0(Landroid/view/accessibility/AccessibilityNodeInfo;)LT/m;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3, p4}, LT/n;->a(ILT/m;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
