.class public LS/y$b;
.super LS/y$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, LS/y$a;-><init>(Landroid/view/View;)V

    iput-object p1, p0, LS/y$b;->b:Landroid/view/View;

    return-void
.end method
