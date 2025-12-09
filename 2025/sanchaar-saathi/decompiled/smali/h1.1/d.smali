.class public final synthetic Lh1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lh1/e$a;

.field public final synthetic f:LT1/a;


# direct methods
.method public synthetic constructor <init>(Lh1/e$a;LT1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/d;->e:Lh1/e$a;

    iput-object p2, p0, Lh1/d;->f:LT1/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lh1/d;->e:Lh1/e$a;

    iget-object v1, p0, Lh1/d;->f:LT1/a;

    invoke-static {v0, v1}, Lh1/e$a;->b(Lh1/e$a;LT1/a;)V

    return-void
.end method
