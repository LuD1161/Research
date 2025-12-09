.class public final synthetic Li0/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Li0/Z;

.field public final synthetic f:Li0/Z$c;


# direct methods
.method public synthetic constructor <init>(Li0/Z;Li0/Z$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/Y;->e:Li0/Z;

    iput-object p2, p0, Li0/Y;->f:Li0/Z$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Li0/Y;->e:Li0/Z;

    iget-object v1, p0, Li0/Y;->f:Li0/Z$c;

    invoke-static {v0, v1}, Li0/Z;->b(Li0/Z;Li0/Z$c;)V

    return-void
.end method
