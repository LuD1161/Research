.class public final synthetic LI/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LI/b$b;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(LI/b$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/d;->e:LI/b$b;

    iput p2, p0, LI/d;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LI/d;->e:LI/b$b;

    iget v1, p0, LI/d;->f:I

    invoke-static {v0, v1}, LI/b$b;->b(LI/b$b;I)V

    return-void
.end method
