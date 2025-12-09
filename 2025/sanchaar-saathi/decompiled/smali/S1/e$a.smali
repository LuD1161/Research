.class public LS1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LS1/e;


# direct methods
.method public constructor <init>(LS1/e$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LS1/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LS1/e;-><init>(LS1/i;)V

    iput-object v0, p0, LS1/e$a;->a:LS1/e;

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, LS1/e;->b(LS1/e;LS1/e$b;)LS1/e$b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No factory supplied."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()LS1/e;
    .locals 1

    iget-object v0, p0, LS1/e$a;->a:LS1/e;

    return-object v0
.end method
