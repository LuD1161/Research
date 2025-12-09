.class public final synthetic La1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:La1/z;

.field public final synthetic f:Lb1/c;


# direct methods
.method public synthetic constructor <init>(La1/z;Lb1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/y;->e:La1/z;

    iput-object p2, p0, La1/y;->f:Lb1/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, La1/y;->e:La1/z;

    iget-object v1, p0, La1/y;->f:Lb1/c;

    invoke-static {v0, v1}, La1/z;->a(La1/z;Lb1/c;)V

    return-void
.end method
