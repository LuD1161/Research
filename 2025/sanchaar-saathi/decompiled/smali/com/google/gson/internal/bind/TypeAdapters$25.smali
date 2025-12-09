.class Lcom/google/gson/internal/bind/TypeAdapters$25;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(LD2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$25;->f(LD2/a;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(LD2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$25;->g(LD2/c;Ljava/util/Calendar;)V

    return-void
.end method

.method public f(LD2/a;)Ljava/util/Calendar;
    .locals 9

    invoke-virtual {p1}, LD2/a;->F()LD2/b;

    move-result-object v0

    sget-object v1, LD2/b;->m:LD2/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, LD2/a;->z()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, LD2/a;->c()V

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :cond_1
    :goto_0
    invoke-virtual {p1}, LD2/a;->F()LD2/b;

    move-result-object v0

    sget-object v1, LD2/b;->h:LD2/b;

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, LD2/a;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LD2/a;->t()I

    move-result v1

    const-string v8, "year"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const-string v8, "month"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v1

    goto :goto_0

    :cond_5
    const-string v8, "minute"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v6, v1

    goto :goto_0

    :cond_6
    const-string v8, "second"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, LD2/a;->h()V

    new-instance p1, Ljava/util/GregorianCalendar;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object p1
.end method

.method public g(LD2/c;Ljava/util/Calendar;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, LD2/c;->r()LD2/c;

    return-void

    :cond_0
    invoke-virtual {p1}, LD2/c;->e()LD2/c;

    const-string v0, "year"

    invoke-virtual {p1, v0}, LD2/c;->l(Ljava/lang/String;)LD2/c;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, LD2/c;->F(J)LD2/c;

    const-string v0, "month"

    invoke-virtual {p1, v0}, LD2/c;->l(Ljava/lang/String;)LD2/c;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, LD2/c;->F(J)LD2/c;

    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, LD2/c;->l(Ljava/lang/String;)LD2/c;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, LD2/c;->F(J)LD2/c;

    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, LD2/c;->l(Ljava/lang/String;)LD2/c;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, LD2/c;->F(J)LD2/c;

    const-string v0, "minute"

    invoke-virtual {p1, v0}, LD2/c;->l(Ljava/lang/String;)LD2/c;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, LD2/c;->F(J)LD2/c;

    const-string v0, "second"

    invoke-virtual {p1, v0}, LD2/c;->l(Ljava/lang/String;)LD2/c;

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, LD2/c;->F(J)LD2/c;

    invoke-virtual {p1}, LD2/c;->h()LD2/c;

    return-void
.end method
