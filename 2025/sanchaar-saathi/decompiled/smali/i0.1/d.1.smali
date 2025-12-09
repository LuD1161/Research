.class public final synthetic Li0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Li0/f;

.field public final synthetic f:Li0/Z$d;


# direct methods
.method public synthetic constructor <init>(Li0/f;Li0/Z$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/d;->e:Li0/f;

    iput-object p2, p0, Li0/d;->f:Li0/Z$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Li0/d;->e:Li0/f;

    iget-object v1, p0, Li0/d;->f:Li0/Z$d;

    invoke-static {v0, v1}, Li0/f;->C(Li0/f;Li0/Z$d;)V

    return-void
.end method
