.class public final LI/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:[LI/a$d;


# direct methods
.method public constructor <init>([LI/a$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/a$c;->a:[LI/a$d;

    return-void
.end method


# virtual methods
.method public a()[LI/a$d;
    .locals 1

    iget-object v0, p0, LI/a$c;->a:[LI/a$d;

    return-object v0
.end method
