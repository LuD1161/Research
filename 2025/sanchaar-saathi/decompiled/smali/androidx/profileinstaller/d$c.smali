.class public Landroidx/profileinstaller/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/profileinstaller/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/profileinstaller/d$c;->a:I

    iput-boolean p3, p0, Landroidx/profileinstaller/d$c;->c:Z

    iput-boolean p2, p0, Landroidx/profileinstaller/d$c;->b:Z

    return-void
.end method
