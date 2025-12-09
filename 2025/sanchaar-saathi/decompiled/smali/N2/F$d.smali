.class public LN2/F$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN2/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:[LN2/F$c;


# direct methods
.method public constructor <init>(I[LN2/F$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LN2/F$d;->a:I

    iput-object p2, p0, LN2/F$d;->b:[LN2/F$c;

    return-void
.end method
