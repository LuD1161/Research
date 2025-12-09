.class public final LS1/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:LS1/f;

.field public b:I


# direct methods
.method public constructor <init>(LS1/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, LS1/e$c;->b:I

    return-void
.end method

.method public synthetic constructor <init>(LS1/e;LS1/i;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LS1/e$c;-><init>(LS1/e;)V

    return-void
.end method

.method public static synthetic a(LS1/e$c;I)I
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, LS1/e$c;->b:I

    return p1
.end method

.method public static synthetic b(LS1/e$c;)LS1/f;
    .locals 0

    iget-object p0, p0, LS1/e$c;->a:LS1/f;

    return-object p0
.end method

.method public static synthetic c(LS1/e$c;LS1/f;)LS1/f;
    .locals 0

    iput-object p1, p0, LS1/e$c;->a:LS1/f;

    return-object p1
.end method

.method public static synthetic d(LS1/e$c;)I
    .locals 2

    iget v0, p0, LS1/e$c;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LS1/e$c;->b:I

    return v0
.end method

.method public static synthetic e(LS1/e$c;)I
    .locals 0

    iget p0, p0, LS1/e$c;->b:I

    return p0
.end method
