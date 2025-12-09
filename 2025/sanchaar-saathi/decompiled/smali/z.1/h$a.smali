.class public Lz/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz/h;->F(Lz/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz/h;


# direct methods
.method public constructor <init>(Lz/h;)V
    .locals 0

    iput-object p1, p0, Lz/h$a;->a:Lz/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz/i;Lz/i;)I
    .locals 0

    iget p1, p1, Lz/i;->c:I

    iget p2, p2, Lz/i;->c:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lz/i;

    check-cast p2, Lz/i;

    invoke-virtual {p0, p1, p2}, Lz/h$a;->a(Lz/i;Lz/i;)I

    move-result p1

    return p1
.end method
